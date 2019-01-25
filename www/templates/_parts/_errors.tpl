	<?php

				foreach ($errors as $error) {
					if(count($error)==1) { ?>
						<div class="notification">
							<div  class="notify notification__title notification--error mb-20"><?=$error['title']?></div>
						</div>
				<?php } else if (count($error)==2) { ?>
				<div class="notification">
					<div class="notification__title notification--error notification--with-description"><?=$error['title']?></div>
						<div class="notification__description mb-20">
							<?=$error['desc']?>
						</div>
				</div>
				<?php
					 } 

				} 

	?>