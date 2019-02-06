<?php


if (!isAdmin()) {
	header("Location: " . HOST);
	die;
}

$title = "Редактировать - Обо мне";

$jobs = R::find('jobs', 'ORDER BY id DESC');

if(isset($_POST['newJob'])){

	if (trim($_POST['period']) == '') {
		$errors[] = ['title' => 'Введите период работы'];
	}
	if (trim($_POST['title']) == '') {
		$errors[] = ['title' => 'Введите название должности'];
	}


	if (empty($errors)) {

		$job = R::dispense('jobs');
		
		$job->period = htmlentities($_POST['period']);
		$job->title = htmlentities($_POST['title']);
		$job->description = htmlentities($_POST['description']);
		
		$job->dateTime = R::isoDateTime();


		R::store($job);

		$success[] = ['title' => 'Новое место работы успешно добавлено!'];
		header('Location:' . HOST . "edit-jobs?result=jobCreated");
//		exit();	


	}

}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit-jobs.tpl";


$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>