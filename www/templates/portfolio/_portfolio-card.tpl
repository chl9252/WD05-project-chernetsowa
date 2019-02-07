			<div class="col-auto pl-0 pr-0 ml-10 mr-10 mb-40">
				<div class="card-box card-box--height">
					<div class="card-box__img-portfolio">
						<?php if ($work->workimg != "") { ?>
						<img src="<?=HOST?>usercontent/portfolio/min/<?=$work->workimg?>" alt="<?=$work->name?> " />
						<?php } else { ?>
							<img src="<?=HOST?>usercontent/portfolio/post-default.jpg" alt="<?=$work->name?>" />
						<?php } ?>
					</div>
					<div class="card-box__title"><?=mbCutString($work->title, 43)?></div>
					<a class="button card-box--button" href="<?=HOST?>portfolio/work?id=<?=$work->id?>">Смотреть кейс</a>
				</div>
			</div>
