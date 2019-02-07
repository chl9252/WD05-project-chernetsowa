	<div class="section-indikators pt-50">
		<div class="container">
			<div class="row indikators-block">
				<div class="offset-md-3 col-md-7">
					<h2 class="title-general mb-10 color-width">Технологии</h2>
					<p class="indikators-block__text mt-0 mb-0">Которые использую в работе</p>
				</div>
				<div class="col-md-2">
					<?php if (isAdmin()) { ?>
					<a class="button button-edit" href="<?=HOST?>edit-skills">Редактировать</a>
					<?php } ?>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 list-technology"><span class="list-technology__text">Frontend</span><span class="list-technology__text">Backend</span><span class="list-technology__text">Workflow</span></div>
				<div class="col-md-10">
					<div class="container-indicators">
						<div class="row ml-90 pt-40">
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--green val-<?=$skills['html']?>"></circle>
								</svg>
								<div class="indicator__text">HTML5</div>
							</div>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--green val-<?=$skills['css']?>"></circle>
								</svg>
								<div class="indicator__text">CSS3</div>
							</div>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--green val-<?=$skills['js']?>"></circle>
								</svg>
								<div class="indicator__text">js</div>
							</div>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--green val-<?=$skills['jquery']?>"></circle>
								</svg>
								<div class="indicator__text">jQuery</div>
							</div>
						</div>
						<div class="row ml-90 pt-40">
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--blue val-<?=$skills['php']?>"></circle>
								</svg>
								<div class="indicator__text">PHP</div>
							</div>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--blue val-<?=$skills['mysql']?>"></circle>
								</svg>
								<div class="indicator__text">MySql</div>
							</div>
						</div>
						<div class="row ml-90 pt-40">
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--yellow val-<?=$skills['git']?>"></circle>
								</svg>
								<div class="indicator__text">Git</div>
							</div>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--yellow val-<?=$skills['gulp']?>"></circle>
								</svg>
								<div class="indicator__text">Gulp</div>
							</div>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--yellow val-<?=$skills['npm']?>"></circle>
								</svg>
								<div class="indicator__text">Npm</div>
							</div>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--yellow val-<?=$skills['webpack']?>"></circle>
								</svg>
								<div class="indicator__text">WebPack</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>