<?php

if (!isAdmin()) {
	header("Location: " . HOST);
	die;
}

$title = "Редактировать - Обо мне";

$about = R::load('about', 1);

//print_r ($about);

if(isset($_POST['editText'])){

	if (trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите имя и фамилию'];
	}
	if (trim($_POST['description']) == '') {
		$errors[] = ['title' => 'Введите описание'];
	}


	if (empty($errors)) {
		
		$about->name = htmlentities($_POST['name']);
		$about->description = $_POST['description'];
		$about->dateTime = R::isoDateTime();

		// image add
		
		if ( isset($_FILES['photo']['name']) && ($_FILES['photo']['tmp_name'] != "") ) {

			$fileName = $_FILES["photo"]["name"];
			$fileTmpLoc = $_FILES["photo"]["tmp_name"];
			$fileType = $_FILES["photo"]["type"];
			$fileSize = $_FILES["photo"]["size"];
			$fileErrorMsg = $_FILES["photo"]["error"];
			$kaboom = explode(".",$fileName);
			$fileExt = end($kaboom);

			list($width,$height) = getimagesize($fileTmpLoc); 
			if($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Файл не имеет размеров'];
			}


			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл не может быть более 4 Мбайт'];
			} else if (!preg_match("/\.(gif|jpg|jpeg|png)$/i",$fileName)){
				$errors[] = ['title' => 'Файл не gif|jpg|jpeg|png'];
				} else if ($fileErrorMsg ==1) {
					$errors[] = ['title' => 'Неизвестная ошибка при добавлении файла'];
				}

			$photo = $about['photo'];

			$photoFolderLocation = ROOT.'usercontent/about/';

			if ( $photo != "") {
				$picurl = $photoFolderLocation . $photo;

				if ( file_exists($picurl) ) {unlink($picurl);}

			}


			$db_file_name = rand(10000000,99999999).".".$fileExt;

			// начнем перемещать

			if (empty($errors)) {

				$uploadfile = $photoFolderLocation.$db_file_name;
				$moveResult = move_uploaded_file($fileTmpLoc,$uploadfile);
				if($moveResult != true) {
					$errors[] = ['title' => 'Файл не загружен'];
				}
			}
			if (empty($errors)) {

// делаем миниатюру

			require_once(ROOT."libs/image_resize_imagick.php");

			$target_file = $photoFolderLocation.$db_file_name;
			$resized_file = $photoFolderLocation.$db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file,$wmax,$hmax);
			$img->writeImage($resized_file);

			$about->photo = $db_file_name;
			}
			
		}

		if (empty($errors)) {

			R::store($about);

			$success[] = ['title' => 'Информация успешно откорректирована!'];
			header('Location:' . HOST . "about?result=aboutUpdated");
			exit();	
		}



	}

}





ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit-text.tpl";


$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot-editor.tpl";




?>