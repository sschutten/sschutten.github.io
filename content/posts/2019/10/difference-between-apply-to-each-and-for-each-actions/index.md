+++
author = "Sander Schutten"
categories = ["Flow", "Logic Apps", "Concurrency"]
date = 2019-10-01T10:48:10Z
description = ""
draft = false
slug = "difference-between-apply-to-each-and-for-each-actions"
tags = ["Flow", "logic apps", "concurrency"]
title = "Difference between Apply to each and For each actions"
aliases = [
    "/posts/difference-between-apply-to-each-and-for-each-action/"
]

+++


Microsoft Flow and Azure Logic Apps are based on the same platform and therefor very similar. There are, however, cases where they're a little different. Take for example the `Apply to each` (Flow) action and the `For each` (Logic Apps) action. They're very similar in that they execute the actions for each of the items in the array. There's one caveat though and that is the default concurrency setting.

{{< figure src="/images/image.png" caption="Apply to each action" >}}

The concurrency setting can be found when looking at the settings of the action and controls how many concurrent items, or items in parallel, the action can process. The `Apply to each` action processes items sequentially by default, while the `For each` action processes items concurrently by default.

{{< figure src="/images/image-2.png" caption="Apply to each concurrency settings" >}}

When moving from Flow to Logic Apps this may introduce unexpected results if you're not aware of this difference. For example if you're used to work in Flow and update variables inside the scope of the `Apply to each` action, you would be surprised that to see that at the end of the run the value of your variable isn't the same as what you got in Flow. The reason for this is that in Logic Apps the variable may be updated by any of the 20 concurrent items at a point in time. Therefor I advice against the use of variables inside a `For each` action and use the `Compose` action instead. To get the same functionality as in Flow you can always override the concurrency control and limit the degree of parallism to 1.

I hope this little nugget helps you when you move between Flow and Logic Apps and vice-versa. At least it surprised me when I discovered it.

