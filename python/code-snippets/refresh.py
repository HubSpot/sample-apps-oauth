from hubspot import HubSpot
client = HubSpot()

refresh_tokens_list = ['refresh_token1','refresh_token2', 'refresh_token3']

def refresh_tokens (refresh_tokens_list):
   new_tokens = []
   for refresh_token in refresh_tokens_list:
        new_token = client.auth.oauth.default_api.create_token(grant_type="refresh_token", redirect_uri="your redirect_uri", client_id = "your client id", client_secret = "your client secret", refresh_token = refresh_token)
        new_tokens.add(new_token)
   return new_tokens

new_tokens_list = refresh_tokens (refresh_tokens_list)
