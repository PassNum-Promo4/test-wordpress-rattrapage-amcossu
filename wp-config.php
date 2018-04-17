<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress2');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'promo4');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');
define('FS_METHOD', 'direct');
/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'o`il:K0r:?XL/?EUDVdtq,fogN^Os75 ~P^wD>h%MYsY$@qz)&Z 5(R_`(fP)_**');
define('SECURE_AUTH_KEY',  '[xE3C-hyYENvZREv(wNC1*[xFXINsix3AjtJ-ApBJMR8[jks6-`32*gE-&x0<t^t');
define('LOGGED_IN_KEY',    'S(+6i-]A;B_&Q}R4fyurAONwg-?`lT$|QX{LeVa|rXa++?+CIZbb bcTLSXO]NUq');
define('NONCE_KEY',        '6Z?s ih-J`rg8=<W{xUK`i2IuQ6EnEiB[SBE|m&5_I1sn Ug{l-E~t7~F@+.7LJG');
define('AUTH_SALT',        'B;YB;#Oy[nP1YRLL%SNz9J8?)xD+m^1dMYQBH6_jg}[f3+96Kr{Bklj%9}$hb;5N');
define('SECURE_AUTH_SALT', '23mlZN2zSmF yF|E:{e>P&-Ps:wFMRM_rsi|8Kt3^]xif6e`D|`f|-p DI/Y5^`d');
define('LOGGED_IN_SALT',   '.+x-0hQA1f1X;?QBAA)lk Lz!`y||)4j/&BA]| & [e@p7v|]GiUXqR{GxOVj9]<');
define('NONCE_SALT',       '8{F).F5+=~=3T>?^bd/E{$aT~x35=+Uvh(V?{`:|<O/Bjrn|!%7(gFNGg`IKb-O3');


/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
