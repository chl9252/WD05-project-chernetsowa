<?php

if ( isAdmin()) {
	include ROOT . "templates/_parts/_admin-panel.tpl";
}
?>

<header class="header">
	<div class="row header__wrapper">
		<?php	include ROOT . "templates/_parts/_header-logo.tpl"; 
		
		if (isLoggedIn()) {
			if ($_SESSION['role'] != 'admin') {
				include ROOT . "templates/_parts/_header-user-profile.tpl";
			}
			
		} else {
			include ROOT . "templates/_parts/_header-user-login.tpl";
		}?>
		
	</div>
	<?php	include ROOT . "templates/_parts/_header-nav.tpl"; ?>
</header>




