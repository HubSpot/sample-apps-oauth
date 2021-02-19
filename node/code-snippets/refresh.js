const hubspot = require('@hubspot/api-client');
  
const hubspotClient = new hubspot.Client();

const GRANT_TYPES = {
  AUTHORIZATION_CODE: 'authorization_code',
  REFRESH_TOKEN: 'refresh_token',
};

const CLIENT_ID = 'your client id';
const CLIENT_SECRET = 'your client secret';

tokens = [{"accessToken":"accessToken1", "refreshToken":"refreshToken1"},
          {"accessToken":"accessToken2", "refreshToken":"refreshToken2"}];

const refreshToken = async (tokens) => {
    return Promise.all(tokens.map(async (token) => {
      const result = await hubspotClient.oauth.defaultApi.createToken(
        GRANT_TYPES.REFRESH_TOKEN,
        undefined,
        undefined,
        CLIENT_ID,
        CLIENT_SECRET,
        token.refreshToken,
    )
    return {
      ...result.body,
      updatedAt: Date.now()
    };
  })).then(response => console.log("API response on refresh:", response));
}

Promise.resolve(refreshToken(tokens));
