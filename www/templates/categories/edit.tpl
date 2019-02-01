
<div class="container pl-0 pr-0 pt-80 pb-120">
	<div class="row m-0">
		<div class="col-10 offset-1 p-0">
			<div class="add-post-content">
				<h1 class="title-general mt-0 mb-0">Редактировать категорию</h1>
					<?php	require ROOT . "templates/_parts/_errors.tpl"; ?>
				<form action="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>" method="POST">
					<div class="add-post-content__name mt-40">
						<label class="label" for="add-post-name">Название категории</label>
						<input class="input" name="cat-name" id="add-post-name" type="text"
						 placeholder="Введите название" value="<?=$cat['cat_title']?>"/>
					</div>
					
					<div class="add-post-content__submit mt-30">
						<input class="button button-save mr-20" type="submit" name="catEdit" value="Сохранить" />
						<a class="button" name="cancel-new-cat" href="<?=HOST?>blog/categories">Отмена</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>