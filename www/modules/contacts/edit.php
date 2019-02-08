<?php

if (!isAdmin()) {
	header("Location: " . HOST);
	die;
}

$title = "Контакты - редактировать";


$contacts = R::load('contacts', 1);

if(isset($_POST['save-contacts'])){

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}

	if (trim($_POST['phone']) == '') {
		$errors[] = ['title' => 'Введите телефон'];
	}
	
	if (empty($errors)) {
		
		$contacts->email = htmlentities($_POST['email']);
		$contacts->phone = htmlentities($_POST['phone']);
		$contacts->address = htmlentities($_POST['address']);
		$contacts->firstname = htmlentities($_POST['firstname']);
		$contacts->lastname = htmlentities($_POST['lastname']);
		$contacts->skype = htmlentities($_POST['skype']);
		$contacts->vkontakte = htmlentities($_POST['vkontakte']);
		$contacts->facebook = htmlentities($_POST['facebook']);
		$contacts->github = htmlentities($_POST['github']);
		$contacts->twitter = htmlentities($_POST['twitter']);
		$contacts->email = htmlentities($_POST['email']);



		R::store($contacts);

		header('Location:' . HOST . "contacts?result=contactUpdated");
		exit();

	}

}

//$cats = R::find('categories', 'ORDER BY cat_title ASC');

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/edit.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>