{
  "author": "Sander Schutten",
  "date": "2011-04-15T11:19:00Z",
  "description": "",
  "draft": false,
  "slug": "mix11-day-3",
  "title": "MIX11: Day 3",
  "menu": {
    "sidebar": {
      "name": "MIX11: Day 3",
      "weight": 201104,
      "identifier": "mix11-day-3",
      "parent": "2011/04"
    }
  }
}


[![](images/DevExpress_MIX2011_7290E0D7.png "MIX2011 logo")](/images/MIX2011Logo.png)
It’s a wrap, MIX11 is over. Yesterday was the last day of MIX and many people have already returned to their homes. There was not much news to be shared, but here are my findings anyway.

## Designer and Developer: A Case for the Hybrid (Jeff Croft)

In this talk Jeff Croft talks about what makes good designers and developers. His statement is that designers should know how to program and developers should know how to design. He doesn’t mean a designer actually needs to know how to program, but the way of thinking as a programmer is what’s important. I think he has an interesting view here and I do actually agree.

## NuGet in Depth: Empowering Open Source on the .NET Platform (Scott Hanselman, Phil Haack)

This was by far the most entertaining session all week. And what else do you expect of the HaaHa show? Except of all the fun stuff going on, NuGet also seems like a really great addition to Visual Studio, even for enterprises. NuGet is a package manager that integrates with Visual Studio (but also works outside of it from command line) that enables you to find and include open source project very easily. Without NuGet you would Google the open source project with Bing, go to the website, look for the download, pick the right version, download it and finally install it. With NuGet you search for the package from within Visual Studio by typing a few keywords and then just click install. The package manager automatically adds references to the DLLs, imports dependencies if necessary and can do al kinds of additional stuff, like modifying the web.config. For enterprises this could be interesting too, where if you needs to reference assemblies of other teams within the organization, it makes it easier to discover them and keep them up to date.

Some fun stuff from the session, that Scott showed right before the start:

- [Sometimes Red, Sometimes Blue](http://www.sometimesredsometimesblue.com/)
- [Let me Google that with Bing for you](http://letmegooglethatwithbingforyou.com/)
- [Microsoft Surface Parody](http://www.youtube.com/watch?v=CZrr7AZ9nCY)
- [YT-Cracker – View Source](http://www.youtube.com/watch?v=oLx2jIiNwZE)
- [Macbook Wheel](http://www.youtube.com/watch?v=9BnLbv6QYcA)

## Enhanced Push Notifications and Tiles for Windows Phone (Thomas Fennel)

Thomas talked about the enhancements Microsoft did to the push notifications and tiles for Windows Phone. The push notification have been enhanced regarding reliability and performance, so that updates can come quicker on non-persistent friendly networks. About 15 minutes it would take at max. For persistent friendly networks the push notifications are instant.

The tiles are enhanced so they now also support background info. If you provide this background info, the tile will animate a flip on the home screen. The flip is asynchronous with other tiles, so it creates a dynamic feel. It’s now also possible to update the tiles directly from the application or using a background agent, making it easier to have dynamic tiles. Last thing is that you can create multiple tiles per application, so you can pin information from your app and allow deep linking into your app.

## Advanced Features in Silverlight 5 (Nick Kramer)

Many of the features from this talk we already seen really quick in the keynote, but I want to highlight a few that were not so clear.

- Silverlight 5 supports trusted applications in the browser. To use this feature you still need to enabled trusted app in the out-of-browser settings (awkward, as Nick mentioned himself), sign the XAP with a certificate and have the certificate installed on the client machine. When you do testing on localhost, it’s not required to sign the XAP.
- Silverlight 5 comes with P/Invoke, allowing you to call directly into Win32 APIs. The advantage of P/Invoke over COM+ for Win32 APIs is that it’s strongly types and doesn’t required COM registration. This feature is not available in the beta and obviously not available on Mac either.
- Silverlight 5 supports the WebBrowser control now also in the browser
- Silverlight 5 can run in a 64 bit process. This is important because you have no control over the browser a user uses or if you need **a lot** of address space.
- The PivotViewer control ship as part of the Silverlight 5 SDK, but is not available in the beta. They made it easier to use your data with the PivotViewer since you don’t need to create specific cxml files anymore. The visuals are also XAML-based now, where they were bitmaps before.

Last announcement is that Silverlight 5 ships second half of 2011.

Just one day left in Las Vegas to enjoy myself. Maybe we go down town or hang out in the shark reef pool, we don’t know yet.

