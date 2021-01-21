# HubSpot sample OAuth 2.0 app

Sample application demonstrating OAuth 2.0 flow with HubSpot API. Currently, this app focuses on demonstrating the functionality of [OAuth API](https://developers.hubspot.com/docs/api/working-with-oauth) endpoints and their related actions.

Please see the documentation on [Creating an app in HubSpot](https://developers.hubspot.com/docs/api/creating-an-ap).


### HubSpot Public API links used in this application

  - [Initiate an Integration with OAuth 2.0](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration)
  - [Get OAuth 2.0 Access Token and Refresh Tokens](https://developers.hubspot.com/docs/methods/oauth2/get-access-and-refresh-tokens)
  - [Refresh OAuth 2.0 Access Token](https://developers.hubspot.com/docs/methods/oauth2/refresh-access-token)
  - [Search contacts](https://developers.hubspot.com/docs/crm/search)

### Note on Application Scopes
HubSpot provides a way to restrict application users access to the system to certain scopes. In order to do that it is a good practice to make a set of scopes required by your applicatuion.
Please refer to [Initiate an Integration with OAuth 2.0](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration) for documentation on the scope parameter passed to https://app.hubspot.com/oauth/authorize to make a set of scopes required. [Scopes](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration#scopes) explains how to make optional scopes and talks about scopes available in HubSpot system


# Running the server

We included several server that each implement the same endpoints and logic.
Pick the language you are most comfortable in and follow the instructions in the directory on how to run.

# Supported languages

* [JavaScript (Node)](node/README.md)
