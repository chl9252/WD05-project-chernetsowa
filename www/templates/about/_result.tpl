<?php if ( $_GET['result'] == 'jobCreated' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--success notification__title mb-30">
			Новое место работы успешно добавлено!
		</div>
	</div>
		
<?php }	?>

<?php if ( $_GET['result'] == 'aboutUpdated' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--success notification__title mb-30">
			Информация успешно отредактирована!
		</div>
	</div>
		
<?php }	?>

<?php if ( $_GET['result'] == 'jobDeleted' ) { ?>

	<div class="notification" data-notify-hide>
		<div class="notify notification--error notification__title mb-30">
			Место работы успешно удалено!
		</div>
	</div>
		
<?php }	?>