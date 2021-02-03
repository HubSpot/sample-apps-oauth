# HubSpot oauth sample app

This is a sample app for the HubSpot [client libraries](https://developers.hubspot.com/docs/api/overview). This sample app demonstrates how to authenticate your HubSpot app using OAuth 2.0, and make an API call to the Contacts API.

## Reference

- [Working with OAuth](https://developers.hubspot.com/docs/api/working-with-oauth)
- [Contacts API ](https://developers.hubspot.com/docs/api/crm/contacts)
 
## How to run locally

1. The first steps is to [create a HubSpot developer account](https://developers.hubspot.com/docs/api/developer-tools-overview). This is where you will create and manage HubSpot apps. 
2. Next [create an app](https://developers.hubspot.com/docs/api/creating-an-app). On the "App info" tab, You will be prompted to fill out some basic information about your app. This includes name, description, logo, etc.  

3. Lastly, in the "Auth" tab, you will be provided with a Client ID & Client secret (used in the next step). To ensure your app is compatible with this sample app, set the "Redirect URL" ("http://localhost:3000/oauth-callback" for Node), and select "Contacts" from the "Scopes" list.

4. Copy the .env.template file into a file named .env in the folder of the language you want to use. For example:

```bash
cp node/.env.template node/.env
```

5. Paste your HubSpot Client Id and HubSpot Client Secret as the value for HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET in .env 

6. Follow the language instructions on how to run. For example, if you want to run the Node server:

```
cd node # there's a README in this folder with instructions
npm install
npm run dev
```

## Supported languages

* [JavaScript (Node)](node/README.md)
* [Python](python/README.md)

## Note on application scopes
HubSpot provides a way to restrict application users access to the system to certain scopes. In order to do that it is a good practice to make a set of scopes required by your application.
Please refer to [Initiate an Integration with OAuth 2.0](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration) for documentation on the scope parameter passed to https://app.hubspot.com/oauth/authorize to make a set of scopes required. [Scopes](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration#scopes) explains how to make optional scopes and talks about scopes available in HubSpot system

