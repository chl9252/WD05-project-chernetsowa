
<div class="container pl-0 pr-0 pt-80 pb-120">
	<div class="row m-0">
		<div class="col-10 offset-1 p-0">
			<div class="add-post-content">
				<h1 class="title-general mt-0 mb-0">Удалить работу</h1>

				
				<form action="<?=HOST?>portfolio/work-delete?id=<?=$work['id']?>" method="POST">
					<div class="add-post-content__name mt-40 user-content">
						<p>Вы действительно хотите удалить работу
						<strong><?=$work['title']?></strong> 
						с id= <?=$work['id']?> ?</p>	

					</div>  
					
					<div class="add-post-content__submit mt-50">
						<input class="button button-delete mr-20" type="submit" name="workDelete" value="Удалить" />
						<a class="button" name="cancel-new-cat" href="<?=HOST?>portfolio">Отмена</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>