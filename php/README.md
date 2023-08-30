# HubSpot-Php sample OAuth 2.0 app

## Setup App

Make sure you have [Php 7.3+](https://www.php.net/downloads) and [Composer](https://getcomposer.org) installed.

## Configure

1. Copy .env.template to .env
2. Paste your HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET

## Install

```bash
composer i
```

## Running

```bash
php -S localhost:8000 -t src/public
```

You should now be able to navigate to [http://localhost:8000](http://localhost:8000) and use the application.

## Configure OAuth

Copy redirect url from login page and designate this on your app's Auth settings page.
