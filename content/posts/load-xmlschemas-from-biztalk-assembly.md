+++
author = "Sander Schutten"
date = 2005-12-07T09:10:00Z
description = ""
draft = false
slug = "load-xmlschemas-from-biztalk-assembly"
title = "Load XmlSchema&#039;s from BizTalk assembly"

+++


That BizTalk compiles your XmlSchema’s into an assembly is great, but wouldn’t it be greater if you could reuse those schema’s in your code? No more hassle of different versions of your schema and your schema’s always at your fingertips because they are in the GAC. Well…it took me a while to figure that it’s actually really simple to do.

To load a schema from an external assembly just instantiate the class which describes your schema. This will be an instance with base type XmlSchemaWithNone. The instance has a property Schema which holds the XmlSchema. If you want to modify the schema I recommend using the CreateResolvedSchema() method on the instance you’ve just created because if you edit the Schema property directly, the schema will be altered and remain in memory until you restart your BizTalk group.

It’s allso possible to load the schema using reflection. This can be useful if you want to use a schema inside a custom pipeline component. Do this as followed:

 // Load the schema assembly Assembly assembly = Assembly.Load(schemaWithNone.AssemblyName); // Get the type of the xml schema we need Type type = assembly.GetType(schemaWithNone.DocSpecName); // Get schema property PropertyInfo schemaInfo = type.GetProperty("Schema"); // Create instance of the schema Object instance = assembly.CreateInstance(type.FullName); // Get the XmlSchema XmlSchema xmlSchema = (XmlSchema)schemaInfo.GetValue(instance, null);

