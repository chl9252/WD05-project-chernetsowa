			<div class="col-auto pl-0 pr-0 ml-10 mr-10 mb-50">
				<div class="card-box">
					<div class="card-box__img-blog">

						<?php if ($post->post_img != "") { ?>
						<img src="<?=HOST?>usercontent/blog/min/<?=$post->post_img?>" alt="<?=$post->title?>" />
						<?php } else { ?>
							<img src="<?=HOST?>usercontent/blog/post-default.jpg" alt="<?=$post->title?>" />
						<?php } ?>
					</div>
					
					<div class="card-box__title">
						<?=mbCutString($post->title, 48)?>	
					</div>
					<a class="button card-box--button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Читать</a>
				</div>
			</div>
