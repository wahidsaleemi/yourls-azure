# Your Own URL Shortener

[![Yourls logo](images/yourls-logo.svg)](https://yourls.org)
This is a clone of [Yourls](https://github.com/YOURLS/YOURLS), with modifications to deploy to Azure.

[![Build Status](https://api.travis-ci.org/YOURLS/YOURLS.svg?branch=master)](https://travis-ci.org/YOURLS/YOURLS) [![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/YOURLS/YOURLS/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/YOURLS/YOURLS/?branch=master) ![PHP from Travis config](https://img.shields.io/travis/php-v/yourls/yourls/master) [![Packagist](https://img.shields.io/packagist/v/yourls/yourls.svg)](https://packagist.org/packages/yourls/yourls) [![OpenCollective](https://opencollective.com/yourls/backers/badge.svg)](https://opencollective.com/yourls#contributors)
[![OpenCollective](https://opencollective.com/yourls/sponsors/badge.svg)](#sponsors)

**YOURLS** is a set of PHP scripts that will allow you to run **Y**our **O**wn **URL** **S**hortener, on **your** server. You'll have full control over your data, detailed stats, analytics, plugins, and more. It's free and open-source. This repo contains sample Azure templates (ARM) templates to deploy the MySQL database and App Service PaaS components.

## Quick Start

1. Update parameters and deploy template. The template creates all the resources and will copy the yourls files into App Service website.
2. Install YOURLS following [yourls.org](https://yourls.org) and the [Wiki documentation](https://github.com/YOURLS/YOURLS/wiki/). The short version is:
   1. Update the /wwwroot/user/config.php file to point to the app service URL and MySQL database that was created.
   2. Browse to yoursite.azurewebsites.net/admin to finish the installation and configuration.

## Tips

1. Do not configure SSL/TLS settings for MySQL initially. You can do this later by creating a file called "db.php" in /wwwroot/user and following [this guide](https://github.com/YOURLS/YOURLS/issues/2783).
2. For MySQL, you must use the BaltimoreCyberTrustRoot certificate as described on [Microsoft Docs](docs.microsoft.com/azure/mysql/concepts-ssl-connection-security). Basically copy the [BaltimoreCyberTrustRoot](https://www.digicert.com/CACerts/BaltimoreCyberTrustRoot.crt.pem) to /wwwroot/user. Specify it in db.php just like this:

```php
<?php
/*
Plugin Name: Secure MySQL
Plugin URI: https://github.com/YOURLS/YOURLS/issues/2783
Description: SSL/TLS PDO Connection
Version: 1.0
Author: YOURLS
Author URI: https://yourls.org/
*/
// No direct call
if( !defined( 'YOURLS_ABSPATH' ) ) die();

// Add custom cert
yourls_add_filter( 'db_connect_driver_option', function ( $options ) {
    // Add your certificate paths
    // https://secure.php.net/manual/ref.pdo-mysql.php
    return $options + Array(PDO::MYSQL_ATTR_SSL_CA=> __DIR__."/BaltimoreCyberTrustRoot.crt.pem");
} );
// Load DB layer as usual
require_once YOURLS_INC.'/class-mysql.php';
yourls_db_connect();
?>
```
