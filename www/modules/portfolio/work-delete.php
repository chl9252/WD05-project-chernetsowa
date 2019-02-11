<?php

if (!isAdmin()) {
	header("Location: " . HOST);
	die;
}

$title = "Портфолио - Удалить работу";

$work = R::load('works', $_GET['id']);


if(isset($_POST['workDelete'])){

	$workImgFolderLocation = ROOT.'usercontent/portfolio/';
	$workImgFolderLocationMin = ROOT.'usercontent/portfolio/min/';	
	
	$file = $work->workimg;

	if ( $file != "") {
		$picurl = $workImgFolderLocation . $file;
		if ( file_exists($picurl) ) {unlink($picurl);}
		$picurl = $workImgFolderLocationMin . $file;
		if ( file_exists($picurl) ) {unlink($picurl);}
		}

	R::trash($work);
	header('Location:' . HOST . "portfolio?result=workDeleted");
	exit();
}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/work-delete.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>