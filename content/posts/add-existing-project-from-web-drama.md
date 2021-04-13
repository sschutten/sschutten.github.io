+++
author = "Sander Schutten"
date = 2006-11-18T18:20:00Z
description = ""
draft = false
slug = "add-existing-project-from-web-drama"
title = "Add existing project from web drama"

+++


Are you tired of dealing with the drama regarding adding an existing project from web in Visual Studio? If so read on, because if you follow these steps tightly you’re ready to go in a minute, or … well, faster then figuring this one out yourself ![:)](/wp-includes/images/smilies/simple-smile.png)

1. Open your solution in Visual Studio and choose Add > Existing Project From Web
2. Type the url to your site, e.g. [http://localhost/YourSite](http://localhost/YourSite)
3. This is the important part: in the open file dialog, instead of browsing to the project file, type the full url to your project file, e.g. [http://localhost/YourSite/YourSite.csproj](http://localhost/YourSite/YourSite.csproj)
4. Visual Studio will tell you it was unable to match the url to the path. Now browse to the directory that contains the project file and select it.

As if magic, Visual Studio suddenly adds your project to the soltion. I hope this helps you not to waste hours to figure it out or even let you create a new project file (I dit that most of the time, go figure!).

