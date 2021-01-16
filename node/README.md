# HubSpot-nodejs oauth sample app

This is a sample app for the [hubspot-nodejs SDK](https://www.npmjs.com/package/@hubspot/api-client). Currently, this app focuses on demonstrating the functionality of [OAuth API](https://developers.hubspot.com/docs/api/working-with-oauth) endpoints and their related actions.

- [Using OAuth 2.0 access tokens](https://developers.hubspot.com/docs/api/intro-to-auth)
- [Get all contacts](https://developers.hubspot.com/docs/api/crm/contacts)

Please see the documentation on [Creating an app in HubSpot](https://developers.hubspot.com/docs/api/creating-an-ap)

### Setup App
Make sure you have [Node](https://nodejs.org/) >=10.13.0 installed.

### Configure

1. Copy .env.template to .env
2. Paste your HubSpot Client Id and HubSpot Client Secret as the value for HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET in .env

### Install
```bash
npm install
```

### Running

```bash
npm run dev
```
You should now be able to navigate to [http://localhost:3000](http://localhost:3000) and use the application.