<div class="sticky-footer-content">
			<div class="container content--padding">
				<div class="row">
					<div class="col-10 offset-1">
						<div class="user-profile-block">
							<h1 class="title-general mt-0 mb-0">Профиль</h1>
							<div class="user-profile__button"><a class="button button-edit" href="<?=HOST?>profile-edit">Редактировать</a></div>
						</div>
						<div class="user-profile-information mb-35 mt-40">
							<div class="user-profile__avatar">
								<div class="avatar">
										<?php
									if ( $user['avatar'] != "" ) { ?>
									<img src="<?=HOST?>usercontent/avatar/full/<?=$user->avatar?>" alt="<?=$currentUser->name?> <?=$currentUser->lastname?>" />
									<?php	} ?>
								</div>
							</div>
							
							<div class="user-profile__description"><span>Имя и фамилия</span>
								<p><?=$user->name?> <?=$user->lastname?></p><span>Email</span>
								<p><?=$user->email?></p><span>Страна, Город</span>
								<p><?=$user->country?> <?=$user->city?></p>
							</div>
						</div>
						


<?php if ( count($comments) > 0) { ?>
						<h2 class="title-2 title-2--color mt-0 mb-25">Комментарии пользователя</h2>
						<div class="user-profile-comments">
																	
						<?php foreach ($comments as $comment) { ?>

							<?php include ROOT . "templates/profile/_comment-card.tpl"; ?>

						<?php }	?>
					<?php  } ?>


						</div>
					</div>
				</div>
			</div>
		</div>