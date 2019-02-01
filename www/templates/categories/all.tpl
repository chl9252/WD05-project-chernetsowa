<div class="container pb-120 pt-50 pl-0 pr-0">

	<?php if ( isset($_GET['result']) ) { ?>
	<?php include ROOT . "templates/categories/_result.tpl" ?>
	<?php }	?>

		<div class="blog-title mb-40">
			<h1 class="title-general mb-0 mt-0 blog-title--color">Категории блога</h1>
			<a class="button button-edit" href="<?=HOST?>blog/category-new">Добавить категорию</a>
		</div>
		
<div class="row ml-0 mr-0 mb-40">
				<div class="col">
						
					<div>id категории</div>
				</div>
				<div class="col">		
					<div>Название категории</div>
				</div>
				<div class="col">
					<div>Редактировать</div>
				</div>
				<div class="col">
					<div>Удалить</div>

				</div>
			</div>




		<?php foreach ($cats as $cat) { ?>
			<div class="row ml-0 mr-0 mb-10">
				<div class="col works-title">
						
					<div><?=$cat['id']?></div>
				</div>
				<div class="col  works-title">		
					<div><?=$cat['cat_title']?></div>
				</div>
				<div class="col">
					<div>
						<a class="button button-edit button--small-edit" href="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>">Редактировать</a>
					</div>
				</div>
				<div class="col">
					<div>
						<a class="button button-delete button--small-delete" href="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>">Удалить</a>
					</div>

				</div>
			</div>

		<?php 	}	?>
		
			
		
</div>