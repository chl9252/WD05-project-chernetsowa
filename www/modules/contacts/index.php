<?php

//if (!isAdmin()) {
//	header("Location: " . HOST);
//	die;
//}

//<?php function showContactItem($name, $title){
//	global $contacts;
//	<?php if($contacts[$name] != '') { 
//			<div class="row mb-15">
//					<div class="col-6 contacts-category">
//						<p>$title</p>
//					</div>
//					<div class="col-6 link-box-info">
//						<p><a class="link" href="mailto:<?=$contacts[$name]"><?=$contacts[$name]   </a></p>
//					</div>
//				</div> 
//				}
//}  

$title = "Контакты";


$contacts = R::load('contacts', 1);

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";

$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>