---
title: Configure Authentication
description: Configure authentication details to access the APIs
navigation_weight: 2
---

# Configure Authentication for your Application

Once you have [created your application](/vonage-business-cloud/vbc-apis/getting-started/create-application), you need to configure it so that it can authenticate against the [Account](/vonage-business-cloud/vbc-apis/account-api/overview), [Extension](/vonage-business-cloud/vbc-apis/extension-api/overview) and [User](/vonage-business-cloud/vbc-apis/user-api/overview) APIs. The VBC APIs use  [OAuth](https://oauth.net/2/) for authentication.

## Generating the authentication keys

1. Select "My Applications" in the left-hand navigation menu.

2. On the "My Application" page, locate your Application in the table and click the "View" link in the "Actions" column.

3. Select the "Production Keys" tab:

    ![Screenshot showing the Production Keys tab of the My Applications page](/assets/images/vbc/production-keys.png)

    > Note the list of Grant Types. The [grant type](https://oauth.net/2/grant-types/) is the method OAuth uses to generate an access token.

4. In the "Callback URL" field, enter a valid callback URL that your application will use to receive the generated token. If you haven't created your application yet, enter `http://localhost` for now and remember to enter the correct URL when you are ready to test it.

5. Click the "Generate Keys" button. This generates the "Consumer Key" and "Consumer Secret" that your application will use to request a token.

6. Look at the "Endpoint Examples" and "Generating Access Tokens" samples to learn how to request the authentication token in your application:

![Screenshot showing endpoint and generating access token examples](/assets/images/vbc/examples.png)

## Authenticating with the password grant type

The following example shows you how to authenticate using the [password grant type](https://oauth.net/2/grant-types/password).

Replace the following placeholders in the example with your own values:

* `VBC_USERNAME` - Your Vonage Business Cloud user name
* `VBC_PASSWORD` - Your Vonage Business Cloud password
* `VBC_CLIENT_ID` - The Consumer Key that you generated in step 5 above
* `VBC_CLIENT_SECRET` - The Consumer Secret that you generated in step 5 above

```building_blocks
source: '_examples/vonage-business-cloud/vbc-apis/general/authenticate-password'
```

When you run it, you will receive a JSON response with the `access_token` embedded in it. You need this token to use the Account, Extension and User APIs:

```json
{
   "access_token":"1c31afac-175c-3e3a-9d4b-8ecee3980cfa",
   "refresh_token":"dde2a67f-d99f-3f03-810b-1fcae59245de",
   "scope":"default",
   "token_type":"Bearer",
   "expires_in":3600
}
```

> Now that you have configured authentication, you must [subscribe to the Provisioning API](/vonage-business-cloud/vbc-apis/getting-started/subscribe-api) before you can use the Account, Extension, and User APIs.
