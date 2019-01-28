<div class="container">
			<div class="row">
				<div class="col-12 flex--center">
					<div class="autorization-content">
						<h1 class="autorization-content__title mb-40">Вход на сайт</h1>

						<?php	require ROOT . "templates/_parts/_errors.tpl"; ?>

						<form method="POST" id="login-form" class="autorization-content-form" action="<?=HOST?>login" novalidate>
							<div class="notification">
								<div id='notify-email' class="notify notification__title notification--error mb-20 hidden">Введите email</div>
								<div id="notify-email2" class="notify notification__title notification--error mb-20 hidden">Неверный формат email</div>
								<div id="notify-password" class="notify notification__title notification--error mb-20 hidden">Введите пароль</div>
								<div class="notify no-paddings">
								<div id='notify-email-password' class="notify no-radius-bottom notify--error hidden">Неверный email или пароль
									<div class="notify no-radius-top">
										<p>Введите верные данные для входа или воспользуйтесь
											<a href="#!">восстановлением пароля </a>, чтобы войти на сайт.</p>
									</div>
								</div>
							</div>

							</div>
							<input class="input mb-10 mt-20" name="email" id="input-email" type="email" placeholder="E-mail" />
							<input class="input mb-25" name="password" id="input-password" type="password" placeholder="Пароль" />
							<div class="autorization-content-form-help mb-30">
								<label class="form__label-checkbox">
									<input class="form__input-checkbox" type="checkbox" checked="checked" />
									<span class="form__checkbox"> </span>Запомнить меня 
								</label>
								<a class="link" href="<?=HOST?>lost-password">Забыл пароль</a>
							</div>
							<div class="autorization-content-form-button">
								<input class="button button-enter" type="submit" name="login" value="Войти" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>