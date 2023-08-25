# HubSpot-nodejs oauth sample app

An [Express server](http://expressjs.com/) implementation

## Requirements

1. Node v10+
2. Redirect url [configured](https://github.com/HubSpot/sample-apps-oauth/blob/main/README.md#how-to-run-locally) to http://localhost:3000/oauth-callback
3. [Configured](https://github.com/HubSpot/sample-apps-oauth/blob/main/README.md#how-to-run-locally) .env file

## Running

1. Install dependencies

```bash
npm install
```

1. Run the application

```bash
npm run dev
```

You should now be able to navigate to [http://localhost:3000](http://localhost:3000) and use the application.

## Configure OAuth

Copy redirect url from login page and designate this on your app's Auth settings page.
