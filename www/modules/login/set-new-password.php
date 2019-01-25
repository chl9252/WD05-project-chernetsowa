<?php 

$recoverycode = false;
$newPasswordReady = false;

$title = "Введите новый пароль";

if ( !empty($_GET['email']) ) {

	$user = R::findOne('users', 'email=?', array($_GET['email']));
	if ( $user ) {
		$user->recovery_code_times--;
		R::store($user);

		if ( $user->recovery_code_times < 1 ) {
			echo "Пользователь исчерпал попытки восстановления";
			echo "<br><br>";
			echo "<a href='" . HOST . "'>Вернуться на главную</a>";
			die;
		}


		if ( $user->recovery_code == $_GET['code'] ) {
			

			$recoverycode = true;
		} else {
			$recoverycode = false;
		}
	} else {
		echo "Пользователь с таким email не найден";
		die;
	}
} else if(isset($_POST['set-password'])){
	$user = R::findOne('users', 'email=?', array($_POST['resetemail']));
	$user->recovery_code_times--;
	R::store($user);

	$user = R::findOne('users', 'email=?', array($_POST['resetemail']));
	if ( $user ) {

		if ( $user->recovery_code_times < 1 ) {
			die;
		}

		if ( $user->recovery_code == $_POST['onetimecode']) {

			$user->password = password_hash($_POST['resetpassword'], PASSWORD_DEFAULT);

			$user->recovery_code_times = 0;
			R::store($user);
			$success[] = ['title' => 'Пароль обновлен'];
			$newPasswordReady = true;
		}

	}

} else {
	header("Location: " . HOST ."lost-password");
	die;
}


/*
	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}
	
	if (empty($errors)) {

		$user = R::findOne('users', 'email=?', array($_POST['email']));
		if ($user) {
		// генерация кода для восстановления пароля
			function random_str( $num = 30 ) {
			return substr(str_shuffle('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, $num);
			}
			$recovery_code = random_str(15);
			$user->recovery_code = $recovery_code;
			$user->recovery_code_times = 3;
			R::store($user);

		// высылаем инструкции на почту
			$recovery_message = "<p>Код для сброса пароля: <b>$recovery_code</b></p>";
			$recovery_message .= "<p>Для сброса пароля перейдите по ссылке ниже и установите новый пароль:</p>";
			$recovery_message .= '<p><a href="' . HOST;
			$recovery_message .= "set-new-password?email=" . $_POST['email'] . "&code=" . $recovery_code;
			$recovery_message .= '" target="_blank">';
			$recovery_message .= "Установить новый пароль</a></p>";

			$headers = "MIME-Version: 1.0" . PHP_EOL .
						"Content-Type: text/html; charset=utf-8" . PHP_EOL .
						"From:" . adopt( SITE_NAME ) . "<" . SITE_EMAIL . ">" . PHP_EOL .
						"Reply-To:" . ADMIN_EMAIL;
			mail($_POST['email'], 'Восстановление доступа', $recovery_message, $headers);

			$success[] = ['title' => 'Все отлично !', 'desc' => "<p>Инструкции по восстановлению доступа высланы на  {$_POST['email']}</p>"];

		} else {
			$errors[] = ['title' => 'Email не зарегистрирован'];
		}
		
	}

}
*/
ob_start();
include ROOT . "templates/login/form-set-new-password.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";


 ?>