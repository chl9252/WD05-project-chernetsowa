<?php

if ( isAdmin()) {
	include ROOT . "templates/_parts/_admin-panel.tpl";
}
?>
	<div class="separate-work-wrapper">
		<div class="separate-work-header-bg mb-50">
			<div class="logo ml-50 mb-120">
				<div class="logo__wrapper">
			
					<div class="logo__img logo__img--dark mr-15"><i class="far fa-paper-plane mr-0"></i></div>
					<div class="logo__title logo__title--dark">Digital Lifestyle</div>
				</div>
				<div class="logo__description logo__description--dark ml-50">Сайт IT специалиста</div>
			</div>
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
						<div class="separate-work-result">
							<h3 class="title-3 mb-20 mt-20 strong">Результат</h3>
							<p><?=$work['result']?></p>
						</div>
					</div>
					<div class="col-5">
						<div class="separate-work-technologies">
							<h3 class="title-3 mb-20 mt-0 strong">Технологии</h3>
							
							<ul class="separate-work-technologies__list">	
							<?php $tech = explode ( " ", trim($work['technologies']));

								foreach ($tech as $i=>$y) {  ?>
						<li class="separate-work-technologies__list-item"><?=$tech[$i]?></li>
							<?php	} ?>

							</ul>
						</div>
						<div class="separate-work-link-project mb-35">
							<h3 class="title-3 mb-20 mt-25 strong">Ссылка на проект</h3><a class="separate-work-link-project__link" href="<?=$work['project']?>"><?=$work['project']?></a>
						</div>
						<div class="separate-work-link-github">
							<h3 class="title-3 title-3 mb-20 mt-0 strong">Код на github</h3><a class="separate-work-link-github__link" href="<?=$work['github']?>"><?=$work['github']?></a>
						</div>
					</div>
				</div>
			</div>
			<div class="separate-work-pagination-wrapper mt-45">
				<div class="row">
					<div class="col-10 offset-1">
						<div class="separate-work-pagination"><a class="button button-previous button-work-pagination-prev" href="#">Все работы <span class="button__icon button__icon--mright float-left"><i class="mr-0 fas fa-arrow-left"></i></span></a><a class="button button-next button-work-pagination-next" href="#">Следующая работа <span class="button__icon"><i class="mr-0 fas fa-arrow-right"></i></span></a></div>
					</div>
				</div>
			</div>
		</div>
	</div>