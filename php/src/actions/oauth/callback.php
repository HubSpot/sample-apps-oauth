<?php

use Helpers\OAuth2Helper;
use HubSpot\Factory;

// https://developers.hubspot.com/docs-beta/working-with-oauth
$tokens = Factory::create()->oauth()->v3()->advancedApi()->getToken(
    grant_type: 'authorization_code',
    code: $_GET['code'],
    redirect_uri: OAuth2Helper::getRedirectUri(),
    client_id: OAuth2Helper::getClientId(),
    client_secret: OAuth2Helper::getClientSecret()
);

OAuth2Helper::saveTokenResponse($tokens);

header('Location: /');
