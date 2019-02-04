<div class="container pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="post">
					<div class="post-head works-title">
					<div class="works-title-left">	<h1 class="title-general mb-0 mt-0"><?=$post['title']?></h1></div>
					<?php if (isAdmin()) { ?>
						<div class="works-title">
							<div>
								<a class="button button-edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать</a>
							</div>
							<div>
								<a class="button button-delete ml-2" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>
							</div>
						</div>
					<?php } ?>
					</div>
					<div class="post-info">
						<div class="post-info__author"><?=$post['name']?> <?=$post['lastname']?></div>
						<div class="post-info__topic"><a class="postlink" href="#"><?=$post['cat_title']?></a></div>
						<div class="post-info__date"><? echo rus_date("j F Y H:i", strtotime($post['date_time'])) ?></div>
							<?php if ( count($comments) > 0) { ?>
						<div class="post-info__comments mr-10"><a class="postlink" href="#comments"><?php commentNumber( count($comments) );?></a></div>
						<?php } ?>
						<?php if(isset($post['update_time'])) { ?>
						<div class="post-info__date"><? echo rus_date("j F Y H:i", strtotime($post['update_time'])) ?></div>
						<?php } ?>
					</div>
					<?php if ($post['post_img'] != "") { ?>
					<div class="post-img">
						<img src="<?=HOST?>usercontent/blog/full/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
					</div>
					<?php } ?>
					<div class="post-content mb-25"><?=$post['text']?></div>
					<div class="post-buttons-nav mb-25"><a class="button button-previous" href="#">Назад <span class="button__icon button__icon--mright float-left"><i class="mr-0 fas fa-arrow-left"></i></span></a><a class="button button-next" href="#">Вперед <span class="button__icon"><i class="mr-0 fas fa-arrow-right"></i></span></a></div>
				</div>

				<div class="user-comments-wrapper mb-25" id="comments">
					<?php if ( count($comments) > 0) { ?>
						<div class="title-2"><?php commentNumber( count($comments) );?></div>
						
						<?php foreach ($comments as $comment) { ?>

							<?php include ROOT . "templates/blog/_comment-card.tpl"; ?>

						<?php }	?>
					<?php  } ?>
				</div>
				<?php include ROOT . "templates/blog/_add-comment-form.tpl"; ?>
				
			</div>
		</div>
	</div>