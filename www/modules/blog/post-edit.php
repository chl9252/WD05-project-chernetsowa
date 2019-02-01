<?php

if (!isAdmin()) {
	header("Location: " . HOST);
	die;
}

$title = "Блог - Редактировать пост";

$post = R::load('posts', $_GET['id']);

$cats = R::find('categories', 'ORDER BY cat_title ASC');


if(isset($_POST['postEdit'])){

	if (trim($_POST['post-name']) == '') {
		$errors[] = ['title' => 'Введите Название поста'];
	}
	if (trim($_POST['postText']) == '') {
		$errors[] = ['title' => 'Введите Текст поста'];
	}


	if (empty($errors)) {

	
		$post->title = htmlentities($_POST['post-name']);
		$post->cat = htmlentities($_POST['post-cat']);
		$post->text = $_POST['postText'];
		$post->authorId = $_SESSION['logged_user']['id'];
		$post->updateTime = R::isoDateTime();

		
// image add
		
		if ( isset($_FILES['postImg']['name']) && ($_FILES['postImg']['tmp_name'] != "") ) {

			$fileName = $_FILES["postImg"]["name"];
			$fileTmpLoc = $_FILES["postImg"]["tmp_name"];
			$fileType = $_FILES["postImg"]["type"];
			$fileSize = $_FILES["postImg"]["size"];
			$fileErrorMsg = $_FILES["postImg"]["error"];
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

			$postImgFolderLocation = ROOT.'usercontent/blog/full/';
			$postImgFolderLocationMin = ROOT.'usercontent/blog/min/';				

			$postImg = $post->post_img;


			if ( $postImg != "") {
				$picurl = $postImgFolderLocation . $postImg;

				if ( file_exists($picurl) ) {unlink($picurl);}

				$picurl = $postImgFolderLocationMin . $postImg;

				if ( file_exists($picurl) ) {unlink($picurl);}

			}


			$db_file_name = rand(10000000,99999999).".".$fileExt;

			// начнем перемещать

			$uploadfile = $postImgFolderLocation.$db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc,$uploadfile);
			if($moveResult != true) {
				$errors[] = ['title' => 'Файл не загружен'];
			}

			// делаем миниатюру

			require_once(ROOT."libs/image_resize_imagick.php");

			$target_file = $postImgFolderLocation.$db_file_name;
			$resized_file = $postImgFolderLocation.$db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnail($target_file,$wmax,$hmax);
			$img->writeImage($resized_file);

			$post->postImg = $db_file_name;

			$target_file = $postImgFolderLocation.$db_file_name;
			$resized_file = $postImgFolderLocationMin.$db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file,$wmax,$hmax);
			$img->writeImage($resized_file);

//			$user->avatarsmall =  "48-" . $db_file_name;
//			$user->avatarsmall = $db_file_name;
		}


/*	
		$_SESSION['logged_user'] = $user;
		$currentUser = $_SESSION['logged_user'];*/

		R::store($post);
		header('Location:' . HOST . "blog?result=postUpdated");
		exit();

	}

}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-edit.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot-editor.tpl";




?>