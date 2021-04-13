+++
author = "Sander Schutten"
categories = ["BizTalk", "C#", "DateTime", "Mapper", "Schema"]
date = 2008-07-01T13:33:16Z
description = ""
draft = false
slug = "map-xsstring-to-xsdatetime"
tags = ["BizTalk", "C#", "DateTime", "Mapper", "Schema"]
title = "Map xs:string to xs:datetime"

+++


Remember that situation where you needed to convert a string representation of a DateTime to a valid DataTime using the BizTalk mapper? No? Well, I do. The parsing of the string as a DateTime is not the real problem here. Once you know how the string is formatted it is simply writing a way to parse it, either using substrings or using the DateTime.Parse method. Once you have a DateTime though, you need to format it to be valid according to the XSD spec. That’s exactly where DateTimes and the BizTalk mapper can give you a headache. Especially when you’re dealing with different locales under which BizTalk is running this can be quite cumbersome. There is however a good way of converting a string to a valid datetime and I’ll show you how in the following code sample:

 // We'll be using the W3cXsd2001class from the Metadata namespace using System.Runtime.Remoting.Metadata; // Parse a string as a DateTime. This could be a string coming // from the source message. DateTime myDateTime = DateTime.Parse("07/01/2008"); // This method returns the current DateTime into a xs:DateTime string dateTimeString = W3cXsd2001.SoapDateTime.ToString( myDateTime );

Happy coding ![:)](/wp-includes/images/smilies/simple-smile.png)

