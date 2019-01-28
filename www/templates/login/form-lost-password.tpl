<div class="container">
	<div class="row">
		<div class="col-12 flex--center">
			<div class="autorization-content">
				<h1 class="autorization-content__title mb-30">Забыл пароль</h1>

		<?php	require ROOT . "templates/_parts/_errors.tpl"; ?>
		<?php	require ROOT . "templates/_parts/_success.tpl"; ?>

				<form  method="POST" class="autorization-content-form" id="lostpassword" action="<?=HOST?>lost-password" novalidate>
					<div class="notification">
						<div id="notify-email" class="notify notification__title notification--error mb-20 hidden">Введите email</div>
							<div id="notify-email2" class="notify notification__title notification--error mb-20 hidden">Неверный формат email</div>
												
					</div>
					<input class="input mb-30" name="email" id="registration-form-email" type="email" placeholder="E-mail"/>
					

					<div class="autorization-content-form-help mb-30 text-center">
						<a class="link" href="<?=HOST?>login">Перейти на страницу входа</a>
					</div>


					<div class="autorization-content-form-button">
<!-- <input name="register" type="hidden" value="register" /> для обработки js без потери register	-->
						<input type="submit" name="lost-password" class="button button-enter" id="idlostpassword" value="Восстановить пароль"/>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>