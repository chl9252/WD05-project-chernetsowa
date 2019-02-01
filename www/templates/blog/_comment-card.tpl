<div class="user-comment">
	<?php	require ROOT . "templates/_parts/_errors.tpl"; ?>
	<div class="user-comment__avatar">
		<div class="avatar avatar--small">

			<?php if ( $comment['avatar'] != "" ) { ?>
				<img src="<?=HOST?>usercontent/avatar/min/<?=$comment['avatar']?>" alt="<?=$comment['name']?> <?=$comment['lastname']?>" />
			<?php } ?>
										
		</div>
	</div>
	<div class="user-comment-info-wrapper">
		<span class="user-comment__name"><?=$comment['name']?> <?=$comment['lastname']?></span>
		<span class="user-comment__date"><i class="far fa-clock"></i><?=$comment['date_time']?></span>
		<div class="user-comment__text">
			<p>
				<?=$comment['text']?>
			</p>
		</div>
	</div>
</div>