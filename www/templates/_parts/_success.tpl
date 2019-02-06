<?php   foreach ($success as $item) {
		if(count($item)==1) { ?>
			<div class="notification" data-notify-hide>
				<div class="notify notification--success notification__title mb-10"><?=$item['title']?></div>
			</div>
		<?php } else if (count($item)==2) { ?>
				<div class="notification" data-notify-hide>
					<div class="notify notification--success notification__title notification--with-description"><?=$item['title']?></div>
					<div class="notification__description mb-20"><?=$item['desc']?></div>
				</div>
			<?php
					 } 
				} 
			?>