
<div class="container pl-0 pr-0 pt-80 pb-120">
	<div class="row m-0">
		<div class="col-10 offset-1 p-0">
			<div class="add-post-content">
				<h1 class="title-general mt-0 mb-0">Редактировать пост</h1>
					<?php	require ROOT . "templates/_parts/_errors.tpl"; ?>
				<form action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" method="POST" enctype="multipart/form-data">
					<div class="add-post-content__name mt-40">
						<label class="label" for="add-post-name">Заголовок поста</label>
						<input class="input" name="post-name" id="add-post-name" type="text" placeholder="Введите заголовок" value="<?=$post['title']?>"/>
					</div>
					<div class="add-post-content__name mt-40">
						<label class="label" for="add-post-cat">Категория </label>
						<select class="user mt-10" name="post-cat" id="add-post-cat">
							<?php foreach ($cats as $cat): ?>
								<option 
									value="<?=$cat['id']?>"
									<?php echo ($post['cat'] == $cat['id'])?"selected":"";?>
									>
									<?=$cat['cat_title']?></option>
							<?php endforeach ?>
						</select>

					</div>
					<div class="add-post-content__img mt-30">
						<section class="upload-file">
							<h6 class="upload-file__title">Изображение</h6>
						


							<p class="upload-file__description">изображение и параметры 945px и больше, высота от 400px</p>
							<input class="input-file" type="file" name="postImg" id="upload-file" data-multiple-caption="{count}" />
							<label class="input-file-mark" for="upload-file">Выбрать файл</label>
							<span>Файл не выбран</span>

							

						</section>

					<?php if ( $post['post_img'] != "") { ?>
							<div class="upload-file-image-box mb-40">
								<img src="<?=HOST?>usercontent/blog/min/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
								<a class="button button-delete button--small-delete upload-file-image-box--button-position" href="#!">Удалить</a>
							</div>
							<?php } ?>
					</div>

					<div class="add-post-content__main mt-30">
						<label class="label" for="add-post-city">Содержание</label>
						<p></p>
						<textarea id="ckEditor1" class="textarea" name="postText" id="add-post-city" placeholder="Введите содержание"><?=$post['text']?></textarea>
					</div>
					<div class="add-post-content__submit mt-30">
						<input class="button button-save mr-20" type="submit" name="postEdit" value="Сохранить" />
						<a class="button" name="cancel-add-post" href="<?=HOST?>blog">Отмена</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
