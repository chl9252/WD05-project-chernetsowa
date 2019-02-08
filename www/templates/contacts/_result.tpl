<?php if ( $_GET['result'] == 'messageDeleted' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--error notification__title mb-30">
			Сообщение успешно удалено!
		</div>
	</div>
		
<?php }	?>

<?php if ( $_GET['result'] == 'messageCreated' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--success notification__title mb-30">
			Сообщение успешно отправлено!
		</div>
	</div>
		
<?php }	?>

<?php if ( $_GET['result'] == 'contactUpdated' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--success notification__title mb-30">
			Контакты успешно отредактированы!
		</div>
	</div>
		
<?php }	?>