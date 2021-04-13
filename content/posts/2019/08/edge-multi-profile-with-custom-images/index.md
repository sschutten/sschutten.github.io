+++
author = "Sander Schutten"
categories = ["Edge", "Profiles", "Tricks"]
date = 2019-08-12T06:18:00Z
description = ""
draft = false
slug = "edge-multi-profile-with-custom-images"
tags = ["Edge", "Profiles", "Tricks"]
title = "Custom profile images in Edge"
aliases = [
    "/posts/edge-multi-profile-with-custom-images/"
]

+++


Ever since Microsoft [announced](https://blogs.windows.com/windowsexperience/2018/12/06/microsoft-edge-making-the-web-better-through-more-open-source-collaboration/) the next version of Edge will be based on Chromium and provided the [Edge Insider](https://www.microsoftedgeinsider.com/en-us/) program I've been happily running the Dev channel of Edge. If you haven't tried yet, you should. It's that good.

One of the benefits of the Chromium based Edge is that it brings profiles to Edge. Profiles are great, because they allow you to have separate profiles for different purposes, e.g. a work profile and a personal profile. Each profile is completely isolated and has their own extensions, favorites and passwords. This is particularly great if you have many accounts, like in my case, where I have accounts for each of the customers I work for.

Profiles are nothing new of course. [Chome](https://support.google.com/chrome/answer/2364824?co=GENIE.Platform%3DDesktop&hl=en) has them for quite some time (since Chrome is obviously also based on Chromium), but also [Firefox](https://support.mozilla.org/en-US/kb/profile-manager-create-remove-switch-firefox-profiles?redirectlocale=en-US&redirectslug=profile-manager-create-and-remove-firefox-profiles) offers this feature. I've come to like the Chromium implementation of profiles better because each profile is sandboxed, in contrary to Firefox. The thing bothering me with all implementations of profiles is the limited options to identify the profiles.

# Firefox

Firefox allows you to pick a color and an icon from a very limited set of options. All profiles live as separate tabs in the same Firefox window. The color is shown in the tab, but you would need to remember which color is which profile. If you have many you simply run out of colors and the icons can't really describe the profile properly.

{{< figure src="images/image-7.png" >}}

# Chome

Chome uses a different approach where each profile is a separate window. You can recognize the active profile of each window in the task bar by the icon you selected.

{{< figure src="images/image-8.png" >}}

I have to give it to Chrome that they offer a nice set of icons. There are a bit more icons available than in Chrome, but you're still limited to the icons that come with Chrome. In addition Chrome can use your Google account image as the icon, but that means you must have a Google account for each of the profiles you use.

{{< figure src="images/image-9.png" >}}

# Edge

In my case I have multiple Microsoft organization (Office 365) and personal accounts. The new Edge also comes with a limited set of icons to choose from, but like Chrome, you can use the account image as an icon. With the new Edge, however, you can sign in with an Office 365 account and use that image!

# Setting it up

To set this up, first we add a new profile to Edge. Click the profile icon in the top right of Edge and choose `Add a profile`. Give your profile the name you want. I named mine `Demo`. A new Edge window will open for the newly created profile. Note that I'm signed in to my PC with my Office 365 account, which is automatically picked up by Edge.

{{< figure src="images/image-10.png" >}}

Next we must be sure the account we want to associate with the profile has a profile picture. Navigate to [https://portal.office.com](https://portal.office.com) and sign in with the account. Once signed in, open the account page by clicking the account button in the top right and choosing `My Office profile`.

> If `My Office profile` is missing and you only see `My account` it probably means your account doesn't have an active Office 365 license assigned. This trick with the profile picture won't work for those accounts.

Change the profile picture to whatever photo you want to use. It may take some time before your photo is available everywhere.

{{< figure src="images/image-18.png" caption="" >}}

After waiting for some time (up to a few hours may be necessary), go to Edge, click the profile button and choose to sign in and sign in with your Office 365 account.

{{< figure src="images/image-11.png" >}}

Once you're signed in, Edge may select the profile picture automatically. If it doesn't it probably means you needs to wait a bit longer for the picture to become available. At any time, check if the profile picture is available to clicking the profile icon in Edge and select `Manage profile settings`.

Click `Edit` and once the profile picture is available, the blank profile icon is replaced by your profile picture and you're able to select it. It may be necessary to restart Edge if your profile picture doesn't show up.

{{< figure src="images/image-19.png" >}}

# Conclusion

There you go! You can now have multiple profiles, each with their own specific icons. I use this trick to create profiles with the logo of the customer account simply by setting the profile picture of the account to be the customer logo.

