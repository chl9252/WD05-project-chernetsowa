<?php

/*$details = R::find('about',1);
//print_r($details);
$aboutName = $details[1]['name'];
$aboutDescription = $details[1]['description'];

$title = "Главная";
$content = "Содержимое главной страницы";

echo "Привет! Это модуль Main and main page";
*/
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/main/main.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>