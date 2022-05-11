{
    "title": "Merge App Settings With Bicep",
    "date": "2021-04-19T07:00:00Z",
    "draft": false,
    "author": {
        "name": "Sander Schutten",
        "image": "/images/avatar.jpg"
    }
}

## Introduction
ARM templates follow the `Desired State Configuration (DSC)` pattern. This means that the ARM template describes what the desired Azure infrastructure should look like. When an ARM template is applied to an Azure environment, the differences between the template and the current state are calculated and applied. The end result is an environment that conforms to the ARM template.

While this is true for many of the Azure resources, it may not always be true for properties of ARM resources. A few examples are App Service App Settings (`Configuration` as it's called in the Azure Portal) and Key Vault Access Policies. In these particular cases the last deployment replaces the complete set of app settings or access policies. This isn't exactly what you would expect and certainly not what you'd want.

## Bicep
We've recently started using Bicep instead of ARM templates. With Bicep, Microsoft starts treating ARM templates as Intermediate Language (IL). In other words, you're encouraged no longer to write ARM templates directly, but instead use one of the higher level languages like Bicep. If you haven't heard of the Bicep language for ARM templates, you should definitely [check it out](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/bicep-overview). It makes authoring Azure deployments so much easier.

## The WEBSITE_RUN_FROM_PACKAGE paradox
I ran into an issue recently where I needed to create an Azure Function and publish the code for it. A good practice is to [run your Azure Functions from a package file](https://docs.microsoft.com/en-us/azure/azure-functions/run-functions-from-deployment-package#:~:text=In%20Azure%2C%20you%20can%20run%20your%20functions%20directly,to%20enable%20this%20functionality%20in%20your%20function%20app.). When you do so your files are deployed as a zip package instead of separate files. For Azure Functions to understand that you're running from a package file, a configuration setting `WEBSITE_RUN_FROM_PACKAGE` with a value of `1` is added to the configuration of the Azure Function once you publish your function.

This introduces the following paradox:
- An empty Azure Function (one without code published to it) can only be deployed to when the  `WEBSITE_RUN_FROM_PACKAGE` settings doesn't exist or its value is `0`
- An Azure Function running a package can only be deployed to when the `WEBSITE_RUN_FROM_PACKAGE` setting has a value of `1`

See the problem? We could do two things:
- Include the `WEBSITE_RUN_FROM_PACKAGE` setting in the ARM template. This would make the Azure Function host unreachable when we initially create the resource, so we can't deploy anything to it.
- Not include the `WEBSITE_RUN_FROM_PACKAGE` setting in the ARM template. Everything would be fine when the resources is created initially, but with every update the ARM template would remove the `WEBSITE_RUN_FROM_PACKAGE` setting from the configuration and the Azure Function would become unreachable for deployment.

## Merging App Settings
The solution would be to merge the app settings, so that when a package file is deployed and the `WEBSITE_RUN_FROM_PACKAGE` setting exists, it is preserved. It can be done with ARM templates, but it's a lot easier with Bicep.

To merge app settings (and this concept should translate to access policies as well) we use two Bicep files:
- `main.bicep`, which is our regular Bicep template
- `appSettings.bicep`, which is a Bicep module that we call from main.bicep and takes care of applying the app settings

### AppSettings.bicep
The appSettings.bicep module is fairly simple. It takes two parameters:
- currentAppSettings, containing the current app settings
- appSettings, the new app settings to apply

It uses the union function to combine the current with the new app settings and apply them to the app service. The combine function automatically removes duplicate values where the values of the last parameter win.

``` js
param currentAppSettings object 
param appSettings object

resource siteconfig 'Microsoft.Web/sites/config@2020-12-01' = {
  name: myAwesomeFunction/appSettings
  properties: union(currentAppSettings, appSettings)
}
```

### Main.bicep

In the main.bicep file you create the app service as usual. Then we call the appSettings.bicep module and use the `list` function to retrieve the current app settings and forward it to the module.

Your main.bicep should look a little like this:

``` js
resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' existing = {
  name: 'myAppServicePlan'
}

resource myAwesomeFunction 'Microsoft.Web/sites@2020-12-01' = {
  name: 'myAwesomeFunction'
  location: resourceGroup().location
  kind: 'functionapp'
  properties: {
    serverFarmId: appServicePlan.id
  }
}

module appSettings 'appSettings.bicep' = {
  name: 'myAwesomeFunction-appSettings'
  params: {
    currentAppSettings: list('{apiWebApp.id}/config/appsettings', '2020-12-01').properties
    appSettings: {
      'Foo': 'Bar'
    }
  }
}
```