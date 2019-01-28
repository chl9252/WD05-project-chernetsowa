<div class="container">
	<div class="row">
		<div class="col-12 flex--center">
			<div class="autorization-content">
				<?php	if($newPasswordReady == false) { ?>
				<h1 class="autorization-content__title mb-30">Введите новый пароль</h1>
				<?php	} ?>

		<?php	require ROOT . "templates/_parts/_errors.tpl"; ?>
		<?php	require ROOT . "templates/_parts/_success.tpl"; ?>

				<form  method="POST" class="autorization-content-form" id="setnewpassword" action="<?=HOST?>set-new-password" novalidate>
					<div class="notification">
						<div id="notify-email" class="notify notification__title notification--error mb-20 hidden">Введите пароль</div>
																			
					</div>
			<?php	if($newPasswordReady == false) { ?>
					<input class="input mb-30" name="resetpassword" id="registration-form-email" type="email" placeholder="Новый пароль"/>
			<?php	} ?>		

					<div class="autorization-content-form-help mb-30 text-center">
						<a class="link" href="<?=HOST?>login">Перейти на страницу входа</a>
					</div>
			<?php	if($newPasswordReady == false) { ?>

					<div class="autorization-content-form-button">
<!-- <input name="register" type="hidden" value="register" /> для обработки js без потери register	-->
					<input type="hidden" name="resetemail" value="<?=$_GET['email']?>"/>
					<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>"/>
						<input type="submit" name="set-password" class="button button-enter" id="idsetpassword" value="Установить новый пароль"/>
					</div>
			<?php	} ?>
				</form>
			</div>
		</div>
	</div>
</div>