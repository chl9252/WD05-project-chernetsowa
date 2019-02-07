<?php

if (!isAdmin()) {
	header("Location: " . HOST);
	die;
}

$title = "Порфолио - добавить новую работу";


if(isset($_POST['workNew'])){

	if (trim($_POST['title']) == '') {
		$errors[] = ['title' => 'Введите название работы'];
	}
	if (trim($_POST['text']) == '') {
		$errors[] = ['title' => 'Введите содержание'];
	}



	if (empty($errors)) {

		$work = R::dispense('works');
		
		$work->title = htmlentities($_POST['title']);
//		$work->cat = htmlentities($_POST['work-cat']);
		$work->text = $_POST['text'];
		$work->result = htmlentities($_POST['result']);
		$work->technologies = htmlentities($_POST['technologies']);
		$work->project = htmlentities($_POST['project']);
		$work->github = htmlentities($_POST['github']);
		$work->authorId = $_SESSION['logged_user']['id'];
		$work->date_time = R::isoDateTime();

		
// image add
		
		if ( isset($_FILES['workimg']['name']) && ($_FILES['workimg']['tmp_name'] != "") ) {

			$fileName = $_FILES["workimg"]["name"];
			$fileTmpLoc = $_FILES["workimg"]["tmp_name"];
			$fileType = $_FILES["workimg"]["type"];
			$fileSize = $_FILES["workimg"]["size"];
			$fileErrorMsg = $_FILES["workimg"]["error"];
			$kaboom = explode(".",$fileName);
			$fileExt = end($kaboom);

			list($width,$height) = getimagesize($fileTmpLoc); 
			if($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Картинка не имеет размеров'];
			}

			

			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Картинка не может быть более 4 Мбайт'];
			} else if (!preg_match("/\.(gif|jpg|jpeg|png)$/i",$fileName)){
				$errors[] = ['title' => 'Картинка не gif|jpg|jpeg|png'];
				} else if ($fileErrorMsg ==1) {
					$errors[] = ['title' => 'Неизвестная ошибка при добавлении картинки'];
				}

			$workImgFolderLocation = ROOT.'usercontent/portfolio/full/';
			$workImgFolderLocationMin = ROOT.'usercontent/portfolio/min/';				



			$db_file_name = rand(10000000,99999999).".".$fileExt;

			// начнем перемещать

			$uploadfile = $workImgFolderLocation.$db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc,$uploadfile);
			if($moveResult != true) {
				$errors[] = ['title' => 'Файл не загружен'];
			}

			// делаем миниатюру

			require_once(ROOT."libs/image_resize_imagick.php");

			$target_file = $workImgFolderLocation.$db_file_name;
			$resized_file = $workImgFolderLocation.$db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnail($target_file,$wmax,$hmax);
			$img->writeImage($resized_file);

			$work->workimg = $db_file_name;

			$target_file = $workImgFolderLocation.$db_file_name;
			$resized_file = $workImgFolderLocationMin.$db_file_name;
			$wmax = 360;
			$hmax = 180;
			$img = createThumbnailCrop($target_file,$wmax,$hmax);
			$img->writeImage($resized_file);

//			$user->avatarsmall =  "48-" . $db_file_name;
//			$user->avatarsmall = $db_file_name;
		}



		R::store($work);
		header('Location:' . HOST . "portfolio?result=workCreated");
		exit();

	}

}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/work-new.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot-editor.tpl";




?>