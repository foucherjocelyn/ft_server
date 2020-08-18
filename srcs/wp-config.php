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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'jfoucher' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'ZP5_nDaZq:|5yD*y:|K)hIyZX~5Zo[HJj#,CjGE^@doK]C%/oO 72Brwwf~).uEl' );
define( 'SECURE_AUTH_KEY',  ',n{yz*h*9#sh0/cl[>a|PCLiVMj:jt:tWq=VM}say.fPKN;,fX<;2-&(u=:?5q6V' );
define( 'LOGGED_IN_KEY',    'z!eF(|7C8qe`_tNxvBOO(xQs+nI-6mGhp)V/=%dfv{o&Ib90Byf 4aT5c|Hajdiz' );
define( 'NONCE_KEY',        'Gsyd&l8GaJ|f4ChGUwsS2*0txY)9IU(/,([,M:;9hgWm_>?5J d1kgl&*E[J^D9^' );
define( 'AUTH_SALT',        ']Z4`2Y@<pJYw&PYZ,e4[$/>cIOdMO)cd`tr1 ElO,?(_.{/[=>Pf[M9Wh:?*,+ti' );
define( 'SECURE_AUTH_SALT', '&kd}Z%WT,XT_<(q{^]f;7%hk,Wb ..Tb$>6oXHQ?N<~egFQOJJ{=cYBWCE*PUwT%' );
define( 'LOGGED_IN_SALT',   '[xl`c2,v%8H]B# g*nZ60Z UK6q^gl,8OMNX/*`D@bid~v/l77qnM[vwcY;0*6>v' );
define( 'NONCE_SALT',       'gL$R|LKm]-~=G3g|f@sFjkaJ<Hms4fDp0FSj@0Z/m~W57+-a:^Xu4Rj 4q|1)F3J' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

