<?php

namespace Helpers;

use HubSpot\Client\Oauth\V3\Model\AccessTokenResponse;
use HubSpot\Factory;

class OAuth2Helper
{
    public const APP_REQUIRED_SCOPES = ['crm.objects.contacts.read'];
    public const CALLBACK_PATH = '/oauth/callback';
    public const SESSION_TOKENS_KEY = 'tokens';

    public static function getClientId(): string
    {
        $clientId = $_ENV['HUBSPOT_CLIENT_ID'];
        if (empty($clientId)) {
            throw new \Exception('Please specify HUBSPOT_CLIENT_ID in .env');
        }

        return $clientId;
    }

    public static function getClientSecret(): string
    {
        $clientSecret = $_ENV['HUBSPOT_CLIENT_SECRET'];
        if (empty($clientSecret)) {
            throw new \Exception('Please specify HUBSPOT_CLIENT_SECRET in .env');
        }

        return $clientSecret;
    }

    public static function getRedirectUri(): string
    {
        return UrlHelper::generateServerUri().static::CALLBACK_PATH;
    }

    public static function getScope(): array
    {
        return static::APP_REQUIRED_SCOPES;
    }

    public static function saveTokenResponse(AccessTokenResponse $tokens): void
    {
        $_SESSION[static::SESSION_TOKENS_KEY] = [
            'access_token' => $tokens->getAccessToken(),
            'refresh_token' => $tokens->getRefreshToken(),
            'expires_in' => $tokens->getExpiresIn(),
            'expires_at' => time() + $tokens->getExpiresIn() * 0.95,
        ];
    }

    public static function isAuthenticated(): bool
    {
        return isset($_SESSION[static::SESSION_TOKENS_KEY]);
    }

    public static function refreshAndGetAccessToken(): string
    {
        if (empty($_SESSION[static::SESSION_TOKENS_KEY])) {
            throw new \Exception('Please authorize via OAuth2');
        }

        $tokens = $_SESSION[static::SESSION_TOKENS_KEY];

        if (time() > $tokens['expires_at']) {
            $response = Factory::create()->oauth()->v3()->advancedApi()->getToken(
                grant_type: 'refresh_token',
                client_id: static::getClientId(),
                client_secret: static::getClientSecret(),
                refresh_token: $tokens['refresh_token']
            );
            self::saveTokenResponse($response);
            $tokens = $_SESSION[static::SESSION_TOKENS_KEY];
        }

        return $tokens['access_token'];
    }
}
