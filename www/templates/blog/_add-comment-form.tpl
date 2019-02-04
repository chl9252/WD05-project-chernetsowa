				<h2 class="title-2 m-0 mb-15">Оставить комментарий</h2>
				<?php if ( isLoggedIn() ) { ?>

					<div class="comments-submit">
						<div class="avatar avatar--small">
					<?php
					if ( $_SESSION['logged_user']['avatar'] != "" ) { ?>
					
						<img src="<?=HOST?>usercontent/avatar/min/<?=$_SESSION['logged_user']['avatar']?>" alt="<?=$_SESSION['logged_user']['name'].$_SESSION['logged_user']['lastname']?>" />
					
					<?php	} ?>
						</div>
					<form class="comments-form" id="comment-add-form" method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
				
						<b class="comments__author">
							<?=$_SESSION['logged_user']['name']?>
							<?=$_SESSION['logged_user']['lastname']?>
						</b>
						<div class="notification">
							<div class="notification__title notification--error hidden">Комментарий не может быть пустым</div>
						</div>
						<textarea class="textarea" name="comment-user" placeholder="Присоединиться к обсуждению..."></textarea>
						<input class="button mt-10" type="submit" name="infoButton" value="Опубликовать" />
					</form>
				
				</div>
				<?php } else { ?>

					<div class="comments-unregistered">
						<p class="comments-unregistered__note"><a class="link" href="<?=HOST?>login">Войдите</a> или <a class="link" href="<?=HOST?>registration">Зарегистрируйтесь</a> чтобы оставить комментарий</p>
					</div>

				<?php } ?>