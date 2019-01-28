<div class="header-admin">
	<div class="header-admin__left">
		<div class="user ml-20">
			<a class="avatar-link" href="#!">
				<div class="avatar avatar--small">
					<?php
					if ( $_SESSION['logged_user']['avatar'] != "" ) { ?>
					<img src="<?=HOST?>usercontent/avatar/min/<?=$_SESSION['logged_user']['avatar']?>" alt="<?=$_SESSION['logged_user']['name'].$_SESSION['logged_user']['lastname']?>" />
				<?php	} ?>
				</div>
			</a>
			<div class="brif ml-20">
				<p class="brif__name"><?=$_SESSION['logged_user']['name']." ".$_SESSION['logged_user']['lastname']?></p>
				<a href="<?=HOST?>profile"><span class="badge">Администратор</span></a>
			</div>
		</div>
		<nav class="admin-nav ml-70"><a href="<?=HOST?>blog/post-new"><i class="fas fa-plus-circle"></i>Пост</a><a href="works-add-work.html"><i class="fas fa-plus-circle"></i>Работа</a><a href="about-me.html"><i class="fas fa-edit"></i>Обо мне</a><a href="contacts-edit.html"><i class="fas fa-edit"></i>Контакты</a><a href="contacts-messages.html"><i class="fas fa-envelope"></i>Сообщения</a></nav>
	</div>
	<div class="header-admin__right"><a href="<?=HOST?>logout"><i class="fas fa-sign-out-alt"></i>Выход</a></div>
</div>