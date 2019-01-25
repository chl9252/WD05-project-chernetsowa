<div class="container">
	<div class="row">
		<div class="col-12 flex--center">
			<div class="autorization-content">
				<h1 class="autorization-content__title mb-40">Регистрация</h1>

		<?php	require ROOT . "templates/_parts/_errors.tpl"; ?>

				<form  method="POST" class="autorization-content-form" id="registrationForm" action="<?=HOST?>registration" novalidate>
					<div class="notification">
						<div id="notify-email" class="notify notification__title notification--error mb-20 hidden">Введите email</div>
							<div id="notify-email2" class="notify notification__title notification--error mb-20 hidden">Неверный формат email</div>
							<div id="notify-password" class="notify notification__title notification--error mb-20 hidden">Введите пароль</div>
						<div class="notification__title notification--error notification--with-description  hidden" id="notify-email-occupy">Данный email уже занят</div>
						<div class="notification__description  hidden" id="notify-email-occupy2">
							<p>Используйте другой email чтобы создать новый аккаунт.</p>
							<p>Или воспользуйтесь <a href="#!">восстановлением пароля</a>, чтобы войти на сайт.</p>
						</div>
					</div>
					<input class="input mb-10 mt-20" name="email" id="registration-form-email" type="email" placeholder="E-mail"/>
					<input class="input mb-30" name="password" id="registration-form-password" type="password" placeholder="Пароль"/>
					<div class="autorization-content-form-button">
<!-- <input name="register" type="hidden" value="register" /> для обработки js без потери register	-->
						<input type="submit" name="register" class="button button-enter" id="registration" value="Регистрация"/>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>