
	<div class="separate-work-wrapper">
		<div class="separate-work-header-bg mb-50">

			<div class="container">

				<div class="separate-work-head works-title">
					
					<div class="works-title-left offset-1 pl-0">
			<?php if ( isset($_GET['result']) ) { ?>
						<?php include ROOT . "templates/portfolio/_result.tpl" ?>
					<?php }	?>
						<h1 class="title-general separate-work-title--size pl-0 mb-0 mt-0"><?=$work['title']?></h1>
					</div>

					<?php if (isAdmin()) { ?>
						<div class="works-title">
							<div>
								<a class="button button-edit" href="<?=HOST?>portfolio/work-edit?id=<?=$work['id']?>">Редактировать</a>
							</div>
							<div>
								<a class="button button-delete ml-2" href="<?=HOST?>portfolio/work-delete?id=<?=$work['id']?>">Удалить</a>
							</div>
						</div>
					<?php } ?>
					</div>


				<div class="separate-work-info mt-20">
					<div class="row">
						<div class="col-8 offset-1">
							<span class="separate-work-info__author mr-20"><?=$work['name']?> <?=$work['lastname']?></span>
							<a class="separate-work-info__category mr-20" href="<?=HOST?>portfolio">Работы</a><span class="post-info__date"><? echo rus_date("j F Y H:i", strtotime($work['date_time'])) ?></span>
						</div>

					</div>
				</div>
				<div class="separate-work-image mt-25">
					<div class="row">
						<div class="col-10 offset-1">
							<?php if ($work['workimg'] != "") { ?>
							<div class="separate-work-image-preview">
								<img src="<?=HOST?>usercontent/portfolio/full/<?=$work['workimg']?>" alt="<?=$work['title']?>" />
							</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="separate-work-description-wrapper">
				<div class="row">
					<div class="col-5 offset-1">
						<div class="separate-work-description">
							<h3 class="title-3 mt-0 mb-20 strong">Кратко о проекте</h3>
							<p><?=$work['text']?></p>
						</div>
						<?php if ($work['result'] != "") { ?>
						<div class="separate-work-result">
							<h3 class="title-3 mb-20 mt-20 strong">Результат</h3>
							<p><?=$work['result']?></p>
						</div>
						<?php } ?>

					</div>
					<div class="col-5">
						<?php if ($work['technologies'] != "") { ?>
						<div class="separate-work-technologies">
							<h3 class="title-3 mb-20 mt-0 strong">Технологии</h3>
															
							<p><?=$work['technologies']?></p>
			
						</div>
						<?php } ?>

							<?php if ($work['project'] != "") { ?>
						<div class="separate-work-link-project mb-35">
							<h3 class="title-3 mb-20 mt-25 strong">Ссылка на проект</h3><a class="separate-work-link-project__link" href="<?=$work['project']?>"><?=$work['project']?></a>
						</div>
						<?php } ?>

							<?php if ($work['github'] != "") { ?>
						<div class="separate-work-link-github">
							<h3 class="title-3 title-3 mb-20 mt-0 strong">Код на github</h3><a class="separate-work-link-github__link" href="<?=$work['github']?>"><?=$work['github']?></a>
						</div>
						<?php } ?>

					</div>
				</div>
			</div>
			<div class="separate-work-pagination-wrapper mt-45">
				<div class="row">
					<div class="col-10 offset-1">
						<div class="separate-work-pagination">
							<?php if($prevId != '') { ?>
							<a class="button button-previous button-work-pagination-prev" href="<?=HOST?>portfolio/work?id=<?=$prevId?>">Предыдущая работа <span class="button__icon button__icon--mright float-left"><i class="mr-0 fas fa-arrow-left"></i></span></a>
							<?php } ?>
							<?php if($nextId != '') { ?>
							<a class="button button-next button-work-pagination-next" href="<?=HOST?>portfolio/work?id=<?=$nextId?>">Следующая работа <span class="button__icon"><i class="mr-0 fas fa-arrow-right"></i></span></a>
							<?php } ?>
						</div>
								
					</div>
				</div>
			</div>
		</div>
	</div>