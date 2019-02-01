<?php if ( $_GET['result'] == 'postCreated' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--success notification__title mb-30">
			Пост успешно добавлен!
		</div>
	</div>
		
<?php }	?>

<?php if ( $_GET['result'] == 'postUpdated' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--success notification__title mb-30">
			Пост успешно отредактирован!
		</div>
	</div>
		
<?php }	?>

<?php if ( $_GET['result'] == 'postDeleted' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--error notification__title mb-30">
			Пост успешно удален!
		</div>
	</div>
		
<?php }	?>