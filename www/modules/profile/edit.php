<?php

$title = "Редактировать профиль";

$currentUser = $_SESSION['logged_user'];

$user = R::load('users', $currentUser->id);

if(isset($_POST['profile-edit'])){

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}
	if (trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите Имя'];
	}
	if (trim($_POST['lastName']) == '') {
		$errors[] = ['title' => 'Введите Фамилию'];
	}



	if (empty($errors)) {
		
		$user->name = htmlentities($_POST['name']);
		$user->lastname = htmlentities($_POST['lastName']);
		$user->email = htmlentities($_POST['email']);
		$user->city = htmlentities($_POST['city']);
		$user->country = htmlentities($_POST['country']);

// image add
		
		if ( isset($_FILES['avatar']['name']) && ($_FILES['avatar']['tmp_name'] != "") ) {

			$fileName = $_FILES["avatar"]["name"];
			$fileTmpLoc = $_FILES["avatar"]["tmp_name"];
			$fileType = $_FILES["avatar"]["type"];
			$fileSize = $_FILES["avatar"]["size"];
			$fileErrorMsg = $_FILES["avatar"]["error"];
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

			$avatar = $user['avatar'];

			$avatarFolderLocation = ROOT.'usercontent/avatar/full/';
			$avatarFolderLocationMin = ROOT.'usercontent/avatar/min/';

			if ( $avatar != "") {
				$picurl = $avatarFolderLocation . $avatar;

				if ( file_exists($picurl) ) {unlink($picurl);}

				$picurl = $avatarFolderLocationMin . $avatar;

				if ( file_exists($picurl) ) {unlink($picurl);}

			}
			$db_file_name = rand(10000000,99999999).".".$fileExt;

			// начнем перемещать

			$uploadfile = $avatarFolderLocation.$db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc,$uploadfile);
			if($moveResult != true) {
				$errors[] = ['title' => 'Файл не загружен'];
			}

			// делаем миниатюру

			require_once(ROOT."libs/image_resize_imagick.php");

			$target_file = $avatarFolderLocation.$db_file_name;
			$resized_file = $avatarFolderLocation.$db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file,$wmax,$hmax);
			$img->writeImage($resized_file);

			$user->avatar =$db_file_name;

			$target_file = $avatarFolderLocation.$db_file_name;
			$resized_file = $avatarFolderLocationMin.$db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img = createThumbnail($target_file,$wmax,$hmax);
			$img->writeImage($resized_file);

//			$user->avatarsmall =  "48-" . $db_file_name;
			$user->avatarsmall = $db_file_name;
		}


		R::store($user);

		$_SESSION['logged_user'] = $user;
		$currentUser = $_SESSION['logged_user'];
		header('Location:' . HOST . "profile");
		exit();

	}

}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>