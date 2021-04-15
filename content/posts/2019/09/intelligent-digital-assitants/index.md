{
  "aliases": [
    "/posts/intelligent-digital-assitants/"
  ],
  "author": "Sander Schutten",
  "categories": [
    "Chatbots",
    "Conversational AI"
  ],
  "date": "2019-09-25T07:10:17Z",
  "description": "",
  "draft": false,
  "slug": "intelligent-digital-assitants",
  "title": "Intelligent chatbots for Microsoft Teams",
  "menu": {
    "sidebar": {
      "name": "Intelligent chatbots for Microsoft Teams",
      "weight": 201909,
      "identifier": "intelligent-digital-assitants",
      "parent": "2019/09"
    }
  }
}


We're living in the decade of the rise of conversational platforms like chatbots. Gartner [predicts](https://www.gartner.com/en/newsroom/press-releases/2019-01-09-gartner-predicts-25-percent-of-digital-workers-will-u) that by 2022 over 70% of modern workers use conversational platforms on a daily basis. Chatbots are around for many years, even [dating back to 1966](https://www.analyticsindiamag.com/story-eliza-first-chatbot-developed-1966/), with fluctuating interest over time. The last few years we see a big increase of excitement for chatbots with artificial intelligence (AI) becoming mainstream. The use of AI enables chatbots to better understand natural language and be able to more intelligently respond to users.

One place where we see particular interest for chatbots is Microsoft Teams. Microsoft Teams is the hub for teamwork in Office 365. Chatbots have been part of the extensibility story of Microsoft Teams from day one. It's easy to get started with chatbots for Microsoft Teams, but it's hard to build a truly effective bot. Granted, there are a lot of tools and platforms available, allowing you to quickly create a query based chatbot using natural language. Most of the time these chatbots are glorified search engines and offer little to no real value for organisations. For chatbots to really stand out, they need to extend beyond the question and answer stage.

## Intelligent chatbots

Intelligent chatbots feature a set of common traits:

* **An intelligent chatbot does one set of tasks and does it well.** Chatbots are not to be confused with virtual assistants like Amazon Alexa, Google Assistant or Microsoft Cortana, which can do a lot of different tasks. Keep the set of tasks that the bot performs narrow and of the same type. It's easier for people to understand what your bot can do for them and it's better discoverable. It's more feasible to make it do well what it's designed for if you can focus on a limited set of functions, thus making its users happy.
* **Be there at the right time, at the right place.** Intelligent chatbots bring the information to the user instead of having the user ask for it. Being proactive is a big plus over the traditional query-based chatbots and greatly reduces the number of actions people have to perform. Most importantly, people feel supported in their work when they notice the chatbot works for them. Of great importance is to reach out to the user at the right time and the right place. What the right time and place is differs per scenario. For example, if the chatbot needs input from the user, it should ask for it during office hours (the right time). Or your chatbot only sends a message to people in the office (the right place).
* **Fail gracefully.** Due to the more natural way people interact with chatbots they expect more human behavior and a less forgiving. The first thing people tend to do with chatbots the first time they try is to break it. It's therefor important for the chatbot to always fail gracefully and keep confidence high. For example, the chatbot should be able to respond to simple chitchat and offer a nice way out if the chatbot is unable to handle the user's request.
* **Speak with a consistent tone, emotion and personality.** People have a welcome experience with a chatbot if the tone and personality is consistent and in line with corporate culture. In a large enterprise organisation it may make more sense to use a more formal tone, while in a startup a more witty personality may be preferred.

## The InSpark intelligent chatbot platform

While it's easy to develop a _'dumb'_ chatbot, it requires significantly more effort to create a chatbot that rises above the normal. In our experience with developing chatbots we've noticed that much time is spent into laying the ground work for a chatbot. A lot of that work is repetitive between bots and slows down chatbot development significantly. To lower the threshold to build advanced chatbots we, at InSpark, set out to build an intelligent chatbot platform. The goal of the platform is to make it easy to build and extend intelligent chatbots, with a strong focus on proactive scenario's. The intelligent chatbot platform builds further on the Microsoft Bot Framework, but offers a couple of additional core features:

* **Quickly create chatbots without the need to install or configure.** Our recommendation is to keep chatbots small and focused on a set of tasks. This means you need to be able to quickly setup a chatbot and start adding value, while not being bothered by all the foundational work. Give your chatbot an identity in the form of a name, description and logo and you're good to go. We like to call it our Chatbot Platform as a Service, or CPaaS in short.
* **Low-code extensibility of the chatbot.** Low-code means little to no programming code is required to extend the chatbot. The chatbot platform comes with a connector for Microsoft Flow and Azure Logic Apps to add new dialogs to the chatbot. Citizen developers who are familiar with Microsoft Flow or Azure Logic Apps can quickly and easily create complex dialogs, including integrations with numerous third party applications. The connector includes actions to initiate dialogs by the bot, making it very easy to built various proactive scenario's.
* **Chitchat is built in.** Each chatbot comes preloaded with a chitchat knowledge base so people can start chatting with the chatbot.

## The lunch bot: an example scenario

A very simple, but very appealing, scenario is that of our own InSpark lunch bot. At InSpark we can participate in the company lunch. If you do so, a small fee per lunch is deducted from your salary. We trust our colleagues and rely on them to write down if they used the lunch on a particular day. Until recently it was a manual and cumbersome process that we wanted to simplify. The way we did it is by introducing the lunch bot.

Each day somewhat after lunch, the lunch bot jumps to life and asks all employees in the office that day a simple question: did you use the lunch today? To make it even easier for the employees they just need to tap either the 'Yes' or 'No' button and they're done for the day. Their answer is recorded in a database and the HR employees can review the answers through a Power BI dashboard.

While this may look like a very simple scenario, it's in fact a very powerful one if you consider the following:

{{< figure src="images/image-4.png" caption="The lunch bot" >}}

* **The right place.** The lunch bot only sends the question to employees that are likely to be in the office that day. While many of us are sometimes in the office, but not every day, we wanted to avoid spamming our employees if they're not in the office. There are multiple ways to do it, but we chose to look at the location where people signed in with their Azure AD account on that day.
* **The right time.** The lunch bot is scheduled to send out the question right after lunch. At the time we chose people most likely returned to their laptops, so chances are high they see the question and can quickly answer it. Off course they also get the question on their mobile phone and can answer it there.
* **Fail gracefully.** If the employee doesn't respond within an hour or so, the lunch bot repeats the question. We've carefully crafted the wording of the repeated question to let the employees know we understand they may be busy. We give the employees another two hours to respond. If the grace period passes, the lunch bot for the final time reaches out to the employees to acknowledge they are busy and notify HR to check in with them.
* **Employees can change their answer.** A good chatbot scenario covers multiple angles. In this case there may be reasons employees didn't get the question from the lunch bot or they want to change their answer. Employees can tell the bot in natural language they had lunch (or not) on any day. For example 'I didn't use lunch yesterday'.
* **Tone and personality.** We're a relatively small company with a geeky culture, and the lunch bot matches that culture in its tone and personality. For example, we've made some additional effort to include a bunch of random 'thank you' gifs to spice up the conversation and give the employees a sense of freshness each day.

## Conclusion

Developing true intelligent chatbots is hard, but the InSpark intelligent chatbot platform reduces the burden to a point where it starts to become easy and fun. In this blog post we've just touched the tip of the iceberg and gave a brief impression of what the intelligent chatform platform is capable of. In next blog posts we'll dive deeper into the various pieces of the chatbot platform and explain in more detail how we've setup some of our chatbot scenario's like the lunch bot.

