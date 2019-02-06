<?php
define('ROOT', dirname(__FILE__).'/');

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";

session_start();

$errors = array();
$success = array();

// РОУТЕР

$uri = $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri,1);
$uri = explode('?', $uri);

switch ( $uri[0]) {
	case '':
		require ROOT . "modules/main/index.php";
		break;
	case 'login':
		require ROOT . "modules/login/login.php";
		break;
	case 'registration':
		require ROOT . "modules/login/registration.php";
		break;
	case 'logout':
		require ROOT . "modules/login/logout.php";
		break;
	case 'lost-password':
		require ROOT . "modules/login/lost-password.php";
		break;
	case 'set-new-password':
		require ROOT . "modules/login/set-new-password.php";
		break;
	case 'profile':
		require ROOT . "modules/profile/index.php";
		break;
	case 'profile-edit':
		require ROOT . "modules/profile/edit.php";
		break;

	case 'about':
		require ROOT . "modules/about/index.php";
		break;
	case 'contacts':
		require ROOT . "modules/contacts/index.php";
		break;
// -------------- Blog ------------------
	case 'blog':
		require ROOT . "modules/blog/index.php";
		break;
	case 'blog/post-new':
		require ROOT . "modules/blog/post-new.php";
		break;
	case 'blog/post-edit':
		require ROOT . "modules/blog/post-edit.php";
		break;
	case 'blog/post-delete':
		require ROOT . "modules/blog/post-delete.php";
		break;
	case 'blog/post':
		require ROOT . "modules/blog/post.php";
		break;
// -------------- Categories ------------------	
	case 'blog/categories':
		require ROOT . "modules/categories/all.php"; //all
		break;
	case 'blog/category-new':
		require ROOT . "modules/categories/new.php"; //add
		break;
	case 'blog/category-edit':
		require ROOT . "modules/categories/edit.php"; //edit
		break;	
	case 'blog/category-delete':
		require ROOT . "modules/categories/delete.php"; //delete
		break;
// -------------- Contacts ------------------	
	case 'contacts':
		require ROOT . "modules/contacts/index.php"; //all
		break;
	case 'contacts-edit':
		require ROOT . "modules/contacts/edit.php"; //edit
		break;
	case 'messages':
		require ROOT . "modules/contacts/messages.php"; //message
		break;
		case 'message-delete':
		require ROOT . "modules/contacts/message-delete.php"; //message del
		break;
// --------------	
	case 'portfolio':
		require ROOT . "modules/portfolio/index.php";
		break;
	default:
		require ROOT . "modules/main/index.php";
		break;
}













