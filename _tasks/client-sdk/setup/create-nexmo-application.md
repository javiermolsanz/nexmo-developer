---
title: Create a Nexmo Application
description: Shows how to create a Nexmo Application
---

# Create a Nexmo Application

To create a Nexmo Application with the CLI:

```
nexmo app:create "Client Outbound PSTN" https://example.com/answer https://example.com/events
```

If you already have an application you can add Answer and Event URLs to it:

```
nexmo app:update aaaaaaaa-bbbb-cccc-dddd-0123456789ab "Client Outbound PSTN" https://example.com/answer https://example.com/events
```

Then you'll need to buy a Nexmo number and link the number to your new or existing Nexmo application:

```
nexmo number:buy 16625461410
nexmo link:app 16625461410 aaaaaaaa-bbbb-cccc-dddd-0123456789ab
```
