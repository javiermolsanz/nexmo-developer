---
title: Link your VBC numbers
description: Associate your VBC numbers with a Nexmo Voice API application.
navigation_weight: 4
---
# Link Your VBC Numbers

After you have [created a Nexmo Voice Application](/vonage-business-cloud/number-programmability/guides/create-voice-application), you need to link your VBC programmable number(s) to it. You can use the [Nexmo CLI](https://github.com/Nexmo/nexmo-cli) for this step too.

To associate a VBC programmable number with your Application, execute the following command, replacing:

* `<number>` with your VBC programmable number.
* `<application_id>` with your Nexmo Voice Application `application_id`.

    ```sh
    $ nexmo link:app <number> <application_id>

> The `application_id` is returned when you execute the `nexmo app:create` command to [create a Voice API Application](/vonage-business-cloud/number-programmability/guides/create-voice-application) and is also available in the [Nexmo Developer Dashboard](https://dashboard.nexmo.com/voice/your-applications).

Once you have created an Application and linked your programmable number(s) to it, you are ready to begin developing. See the following resources to get started:

* [Number Programmability building blocks](/vonage-business-cloud/number-programmability/overview#number-programmability-building-blocks)
* [Voice API building blocks](/vonage-business-cloud/number-programmability/overview#voice-api-building-blocks)
* [Voice API tutorials](/vonage-business-cloud/number-programmability/overview#voice-api-tutorials)
* [Reference documentation](/vonage-business-cloud/number-programmability/overview#reference)
