{
  "author": "Sander Schutten",
  "date": "2007-01-05T16:02:37Z",
  "description": "",
  "draft": false,
  "slug": "biztalk-shell-extension",
  "title": "BizTalk shell extension"
}


I would like to share one interesting tool I came across. This is a tool for Viewing BizTalk Assemblies Deployed on BizTalk Server. Not only you can view the deployed assemblies but can also view the contents of the assembly by double clicking on assembly. Also you can dive deeper by double clicking the individual BizTalk Artifact where you can view more detailed info. Say if, you double click a schema of an assembly you will see the schema of that particular message.

To install this utility on your BizTalk server, go to Start -> Run and enter the command below:  
**Regsvr32 “C:Program FilesMicrosoft BizTalk Server 2004Developer ToolsBtsAsmExt.dll”**

You will get a popup saying the component has been registered. Now open an explorer window and you will be able to see a new folder called **BizTalk Server Assemblies** under the **My Computer** node. Double click it and you will see a list of currently deployed assemblies. Double click one assembly and you’ll find all the BizTalk artifacts in that assembly. Double click one artifact and you will see its details.

