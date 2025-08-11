<?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/',
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/var/www/html/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/var/www/html/custom_apps',
      'url' => '/custom_apps',
      'writable' => true,
    ),
  ),
  'upgrade.disable-web' => true,
  'passwordsalt' => 'b9t4q3OVFzWu6DbWSBPKPZWXPCVtRt',
  'secret' => 'goW7o/EMl/RIsznaqcBnaDUS7AcYQRwzsYv3V8gZgKL8nEAl',
  'trusted_domains' => 
  array (
    0 => 'localhost',
    1 => 'localhost',
    2 => '127.0.0.1',
    3 => 'nextcloud',
    4 => 'demo-nextcloud',
  ),
  'datadirectory' => '/var/www/html/data',
  'dbtype' => 'mysql',
  'version' => '27.1.11.3',
  'overwrite.cli.url' => 'http://localhost',
  'dbname' => 'nextcloud',
  'dbhost' => 'db',
  'dbport' => '',
  'dbtableprefix' => 'oc_',
  'mysql.utf8mb4' => true,
  'dbuser' => 'nc_user',
  'dbpassword' => 'nc_pass',
  'installed' => true,
  'instanceid' => 'ocqmy5k4xn7a',
);
