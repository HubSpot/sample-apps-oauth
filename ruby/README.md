# HubSpot-ruby sample OAuth 2.0 app

This is a sample app for the [hubspot-ruby SDK](../../../../)

Please see the documentation on [How do I create an app in HubSpot?](https://developers.hubspot.com/docs/faq/how-do-i-create-an-app-in-hubspot)

### HubSpot Public API links used in this application

  - [Working with OAuth](https://developers.hubspot.com/docs/api/working-with-oauth)
  - [Initiate an Integration with OAuth 2.0](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration)
  - [Get OAuth 2.0 Access Token and Refresh Tokens](https://developers.hubspot.com/docs/methods/oauth2/get-access-and-refresh-tokens)
  - [Refresh OAuth 2.0 Access Token](https://developers.hubspot.com/docs/methods/oauth2/refresh-access-token)
  - [Search contacts](https://developers.hubspot.com/docs-beta/crm/search)

### Note on Application Scopes
HubSpot provides a way to restrict application users access to the system to certain scopes. In order to do that it is a good practice to make a set of scopes required by your applicatuion.
Please refer to [Initiate an Integration with OAuth 2.0](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration) for documentation on the scope parameter passed to https://app.hubspot.com/oauth/authorize to make a set of scopes required. [Scopes](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration#scopes) explains how to make optional scopes and talks about scopes available in HubSpot system. Needed scopes for this app(`crm.objects.contacts.write, crm.objects.contacts.read`).

### Setup App

Please, make sure that you have ruby 3.1.3 installed and run bundle in your app folder.

```bundle install```

### Configure

1. Copy .env.template to .env
2. Paste your HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET

### Running

Just run your rails app

```rails s```

You should now be able to navigate to [http://localhost:3000](http://localhost:3000) and use the application.
