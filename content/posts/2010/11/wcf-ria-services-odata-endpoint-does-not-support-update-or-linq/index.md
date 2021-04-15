{
  "author": "Sander Schutten",
  "categories": [
    "OData",
    "Silverlight",
    "WCF RIA Services"
  ],
  "date": "2010-11-24T17:46:33Z",
  "description": "",
  "draft": false,
  "slug": "wcf-ria-services-odata-endpoint-does-not-support-update-or-linq",
  "tags": [
    "OData",
    "Silverlight",
    "WCF RIA Services"
  ],
  "title": "WCF RIA Services OData endpoint does NOT support update or LINQ"
}


After struggling with WCF RIA Services v1 (Silverlight 4 RTM) to enable insert/update for the OData endpoint for use with Windows Phone 7, I finally figured it out. The current version of WCF RIA Services does NOT support update or LINQ! I think I searched for a couple of hours until I found the single line of information on this in [this](http://blogs.msdn.com/b/deepm/archive/2010/05/14/silverlight-tv-episode-26-exposing-soap-json-and-odata-endpoints-from-ria-services.aspx) following Silverlight TV post:

> NOTE: The ODATA endpoint has very limited support in V1. There is no Update or LINQ query support in this release.

