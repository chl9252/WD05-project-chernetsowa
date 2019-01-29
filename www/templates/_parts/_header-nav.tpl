<div class="row">
	<nav class="nav">
		<a class= <?= ($uri[0] == "") ? "nav__link--active" : "nav__link" ?> href="<?=HOST?>">Главная</a>
		<a class= <?= ($uri[0] == "about") ? "nav__link--active" : "nav__link" ?> href="<?=HOST?>about">Обо мне</a>
		<a class= <?= ($uri[0] == "portfolio") ? "nav__link--active" : "nav__link" ?> href="<?=HOST?>portfolio">Работы</a>
		<a class= <?= ($uri[0] == "blog") ? "nav__link--active" : "nav__link" ?> href="<?=HOST?>blog">Блог</a>
		<a class=<?= ($uri[0] == "contacts") ? "nav__link--active" : "nav__link" ?> href="<?=HOST?>contacts">Контакты</a>
	</nav>
</div>