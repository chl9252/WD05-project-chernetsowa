<?php

if (!isAdmin()) {
	header("Location: " . HOST);
	die;
}

$title = "Сообщения - Удалить сообщение";

$message = R::load('messages', $_GET['id']);

if(isset($_POST['messageDelete'])){

	$fileFolderLocation = ROOT.'usercontent/message/';
	
	$file = $message->message_file;

	if ( $file != "") {
		$picurl = $fileFolderLocation . $file;

		if ( file_exists($picurl) ) {unlink($picurl);}

	}

	R::trash($message);
	header('Location:' . HOST . "messages?result=messageDeleted");
	exit();
}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/message-delete.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>