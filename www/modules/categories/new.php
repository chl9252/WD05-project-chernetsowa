<?php

if (!isAdmin()) {
	header("Location: " . HOST);
	die;
}

$title = "Добавить новую категорию";

//$cats = R::find('categories', 'ORDER BY id DESC');

if(isset($_POST['catNew'])){

	if (trim($_POST['cat-name']) == '') {
		$errors[] = ['title' => 'Введите название категории'];
	}
	 
	if (empty($errors)) {

		$cat = R::findOne('categories', 'cat_title=?', array($_POST['cat-name']));
		if ( count($cat) > 0) {
			$errors[] = ['title' => 'Такая категория уже имеется'];
		}

		if (empty($errors)) {
		$cat = R::dispense('categories');
		$cat->cat_title = htmlentities($_POST['cat-name']);
		
		R::store($cat);

		header('Location:' . HOST . "blog/categories?result=catCreated");
		exit();
}
	}

}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/new.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>