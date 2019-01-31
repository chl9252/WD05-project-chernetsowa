<?php if ( $_GET['result'] == 'catCreated' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--success notification__title mb-30">
			Категория успешно добавлена!
		</div>
	</div>
		
<?php }	?>

<?php if ( $_GET['result'] == 'catUpdated' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--success notification__title mb-30">
			Категория успешно отредактирована!
		</div>
	</div>
		
<?php }	?>

<?php if ( $_GET['result'] == 'catDeleted' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--error notification__title mb-30">
			Категория успешно удалена!
		</div>
	</div>
		
<?php }	?>