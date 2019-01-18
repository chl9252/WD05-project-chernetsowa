<?php

// BD
define('DB_HOST', 'localhost');
define('DB_NAME', 'WD05-project-chernetsowa');
define('DB_USER', 'root');
define('DB_PASS', '');

// HOST of SITE

define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

define('ROOT', dirname(__FILE__).'/');

?>