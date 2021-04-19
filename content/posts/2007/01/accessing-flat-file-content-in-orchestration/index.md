{
  "author": "Sander Schutten",
  "date": "2007-01-05T15:42:00Z",
  "description": "",
  "draft": false,
  "slug": "accessing-flat-file-content-in-orchestration",
  "title": "Accessing flat file content in orchestration",
  "menu": {
    "sidebar": {
      "name": "Accessing flat file content in orchestration",
      "weight": 200701,
      "identifier": "accessing-flat-file-content-in-orchestration",
      "parent": "2007/01"
    }
  }
}


Sometimes the requirement for your BizTalk solution is to receive a flat file (read: not xml) in your orchestration an do something with the data. An example could be receiving a PDF file and extracting some portions of data out of it. Some BizTalk developers already know that you can receive whatever file without treating it as XML by using System.Xml.XmlDocument as its message type (sounds silly doesn’t it?). After you’ve received the message you can’t access it as you normally do because it’s still a byte stream. Charles Young [dives into this subject](http://geekswithblogs.net/cyoung/articles/84735.aspx) and explains how you can access the data that is contained in such messages. Thanks Charles!

