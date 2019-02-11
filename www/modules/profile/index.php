<?php

$currentUser = $_SESSION['logged_user'];

$user = R::load('users', $currentUser->id);


$sqlComments = 'SELECT
			comments.text, comments.date_time, comments.user_id, comments.post_id, posts.title
		FROM `comments`
		INNER JOIN posts ON comments.post_id = posts.id
		WHERE comments.user_id = ' . $currentUser->id ;

$comments = R::getAll( $sqlComments );

$title = "Профиль пользователя";

//$currentUser = $_SESSION['logged_user'];

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>