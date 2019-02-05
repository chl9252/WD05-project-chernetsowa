<?php

//if (!isAdmin()) {
//	header("Location: " . HOST);
//	die;
//}

//<?php function showContactItem($name, $title){
//	global $contacts;
//	<?php if($contacts[$name] != '') { 
//			<div class="row mb-15">
//					<div class="col-6 contacts-category">
//						<p>$title</p>
//					</div>
//					<div class="col-6 link-box-info">
//						<p><a class="link" href="mailto:<?=$contacts[$name]"><?=$contacts[$name]   </a></p>
//					</div>
//				</div> 
//				}
//}  

$title = "Контакты";


$contacts = R::load('contacts', 1);

if(isset($_POST['save-message'])){

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}
	if (trim($_POST['message']) == '') {
		$errors[] = ['title' => 'Введите текст сообщения'];
	}





	if (empty($errors)) {

		$message = R::dispense('messages');
		
		$message->email = htmlentities($_POST['email']);
		$message->name = htmlentities($_POST['name']);
		$message->message = htmlentities($_POST['message']);
		$message->dateTime = R::isoDateTime();

		// image add
		
		if ( isset($_FILES['file']['name']) && ($_FILES['file']['tmp_name'] != "") ) {

			$fileName = $_FILES["file"]["name"];
			$fileTmpLoc = $_FILES["file"]["tmp_name"];
			$fileType = $_FILES["file"]["type"];
			$fileSize = $_FILES["file"]["size"];
			$fileErrorMsg = $_FILES["file"]["error"];
			$kaboom = explode(".",$fileName);
			$fileExt = end($kaboom);


			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл не может быть более 4 Мбайт. Файл не загружен'];
			} else if (!preg_match("/\.(gif|jpg|jpeg|png|pdf|doc|txt)$/i",$fileName)){
				$errors[] = ['title' => 'Файл не gif|jpg|jpeg|png|pdf|doc|txt. Файл не загружен'];
				} else if ($fileErrorMsg ==1) {
					$errors[] = ['title' => 'Неизвестная ошибка при добавлении файла. Файл не загружен'];
				}

			$fileFolderLocation = ROOT.'usercontent/message/';


			$db_file_name = rand(10000000,99999999).".".$fileExt;

			// начнем перемещать

			$uploadfile = $fileFolderLocation.$db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc,$uploadfile);
			if($moveResult != true) {
				$errors[] = ['title' => 'Файл не загружен'];
			}

			if (empty($errors)) {

			$message->message_file_name_original = $fileName;

			$message->message_file = $db_file_name;
			}
			
		}

		R::store($message);

		$success[] = ['title' => 'Сообщение было успешно отправлено!'];

//		header('Location:' . HOST . "contacts");
//		exit();

	}

}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>