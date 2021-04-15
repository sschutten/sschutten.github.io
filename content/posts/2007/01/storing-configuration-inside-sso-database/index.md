{
  "author": "Sander Schutten",
  "date": "2007-01-05T15:16:14Z",
  "description": "",
  "draft": false,
  "slug": "storing-configuration-inside-sso-database",
  "title": "Storing configuration inside SSO database"
}


Maybe the simplest way to store configuration data for your BizTalk solution is to use the BTSNTSvc.exe.config file and the System.Configuration namespace to access that data. Most of the time I’m using this method on projects, but it introduces problems in BizTalk farms because you need to keep the configuration in sync. Another way would be to use a database, but that still requires a connection string to be present somewhere (again the BTSNTSvc.exe.config file?)

Jon Flanders provided a great new way to store configuration data: the SSO database. The first time I heard about it I thought it was very complex but after reading [his post on the matter](http://www.masteringbiztalk.com/blogs/jon/PermaLink,guid,6e4b84db-d15f-45e9-b245-08b1eb6c4def.aspx) it seems rather simple. Using this method you get automatic distributed configuration plus automatic encryption! He provides a sample project with a configuration tool to edit the configuration and an orchestration to try it out. This is definitely the way I’m going to store configuration data for any future BizTalk projects.

