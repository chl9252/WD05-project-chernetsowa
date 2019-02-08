
<div class="sticky-footer-content">			
	<div class="main-wrapper">
		<?php require ROOT . "templates/about/about-text.tpl"; ?>
		<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-9">
				<div class="about-me__button mt-0">
					<a class="button" href="<?=HOST?>about">Подробнее</a>
				</div>
			</div>
		</div>


		<div class="line"></div>
		<div class="new-works container section pl-0 pr-0">
			<div class="row">
				<div class="col-md-12">
					<h2 class="title-2 title-1--weight mb-40"> Новые <a class="title-1--underline postlink" href="<?=HOST?>portfolio">работы</a></h2>
				</div>
			</div>
		</div>

		<div class="row ml-0 mr-0 mb-20">
				<?php foreach ($works as $work) { ?>
				<?php include ROOT . "templates/portfolio/_portfolio-card.tpl" ?>

				<?php 	}	?>

		</div>


		<div class="blog-entries container pl-0 pr-0">
			<div class="row">
				<div class="col-md-12">
					<h2 class="title-2 title-1--weight mb-30"> Новые записи в <a class="title-1--underline postlink" href="<?=HOST?>blog">блоге</a></h2>
				</div>
			</div>
			<div class="row ml-0 mr-0 mb-0">
							
				<?php foreach ($posts as $post) { ?>
				<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>

				<?php 	}	?>
			
			
			</div>

		</div>
	</div>
</div>
