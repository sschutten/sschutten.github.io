{
  "author": "Sander Schutten",
  "date": "2011-04-12T11:18:00Z",
  "description": "",
  "draft": false,
  "slug": "mix11-boot-camps",
  "title": "MIX11: Boot Camps",
  "menu": {
    "sidebar": {
      "name": "MIX11: Boot Camps",
      "weight": 201104,
      "identifier": "mix11-boot-camps",
      "parent": "2011/04"
    }
  }
}


[![](images/DevExpress_MIX2011_7290E0D7.png "MIX2011 logo")](images/DevExpress_MIX2011_7290E0D7.png)
Today was the preconference day at MIX11, which means boot camps for everyone that applied for them. There were options for the morning and afternoon boot camps and I chose the Silverlight and SharePoint & Silverlight boot camps. This is a brief summary of what I think were things of interest.

## Silverlight boot camp

I didn’t came to this boot camp to improve my knowledge on Silverlight, but more because of the speakers: John Papa and Mike Taulty. I think they might be considered heroes in the field of Silverlight. As expected, the boot camp was planned well and packed with the basics for building line of business apps with Silverlight. Even for an experienced Silverlight developer there were interesting things as well.

Silverlight comes with two HTTP stacks: the browser HTTP stack and the client HTTP stack. The difference is that the browser HTTP stack is easier to use, but is limited in its functionality. E.g. the browser stack automatically marshals the callback to the UI thread so you don’t need to. The browser stack on the other hand only supports 200 and 400 status codes and all other codes are converted to any of these. The client HTTP stack supports the full HTTP protocol, but requires more complex code. Always go for the browser HTTP stack, unless you need specific features e.g. in the case of SOAP, WCF, put or delete operations etc. To choose for a specific HTTP stack you can either do it on a per call basis or use the WebClient.RegisterPrecix static method to define the HTTP stack to use for certain URLs.

This week SP2 of WCF RIA Services for Silverlight 5 will be released. New features in this release are:

- DateTimeOffset, which allows the developer to explicitly specify a date time offset to use instead of the default one (by popular demand)
- MVVM support, by generating client side classes that are more suitable for databinding than the current ones

In the near future we can expect Entity Framework Code First to be supported by WCF RIA Services, but it will be in the release after the SP2.

Alongside all the demos and information a few new small added features of Silverlight 5 were disclosed today:

- DataContextChanged event is added, which allows you to respond to DataContext changes
- Ancestor binding, which is derived from WPF and allows you to move up the control hierarchy and break out of the context of the (inherited) DataContext

## SharePoint & Silverlight boot camp

This boot camp was particularly interesting because it explained what to keep in mind when combining SharePoint and Silverlight to achieve an improved user experience.

The announcement was made that the SharePoint and Silverlight training is available on MSDN [here](http://msdn.microsoft.com/nl-nl/SharePointAndSilverlightTrainingCourse).

Things to keep in mind when building Silverlight for SharePoint are:

- Use a consistent theme in both SharePoint and Silverlight so they both blend
- Expose a JavaScript API, so SharePoint developers can interact with the Silverlight control
- Provide down level support, so the site still works even if someone doesn’t have Silverlight installed
- Tightly integrate with SharePoint, e.g. use the ribbon in combination with the Silverlight webpart

There are four ways to add Silverlight to SharePoint:

- Upload a XAP file
- Use the built-in Silverlight webpart
- Use the Silverlight SharePoint webparts extension
- Do it all by hand

The Silverlight SharePoint webparts (found [here](http://visualstudiogallery.msdn.microsoft.com/e8360a85-58ca-42d1-8de0-e48a1ab071c7)) is a great extension to the SharePoint solution project for Visual Studio, allowing you to easily add an Silverlight webpart. The steps to do this are:

- Add a Silverlight application to the solution
- Add a SharePoint solution to the solution
- Add a Silverlight webpart project item to the SharePoint solution
- Modify the config of the webpart to point to the XAP file

The SharePoint and Silverlight training contains code for a custom Silverlight webpart. One of the main reasons for using this webpart is because the default webpart has a timeout limit of 5 seconds, which means the Silverlight app needs to be running within 5 seconds or SharePoint kills it.

SharePoint 2010 exposes an OData service when using WCF Data Services. This allows for full CRUD operations from within Silverlight. The pros for this method are: the code is type-safe and intellisense is provides.

An other option to get to the SharePoint data is to use the SharePoint client object model. This client object model provides access to a subset of types and members contained in the Microsoft.SharePoint namespace from .NET, JavaScript and Silverlight. This means you can access lists and pages from within Silverlight just as you would when using the server object model. Pros for this method: flexible, code re-use.

That’s it for now, more tomorrow on the first conference day at MIX11. I think we can expect a few announcements / releases during the keynote. My thoughts are: Silverlight 5 beta and new Windows Phone 7 SDK with new APIs.

