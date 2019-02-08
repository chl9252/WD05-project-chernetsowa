	<script src="<?=HOST?>templates/assets/libs/jquery/jquery.min.js"></script><!-- endbuild -->
	<script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>
	<!-- build:jsVendor js/vendor.js -->
	<script src="<?=HOST?>templates/assets/libs/jquery-custom-scrollbar/jquery.custom-scrollbar.js"></script><!-- endbuild -->
	<!-- build:jsMain js/main.js -->
	<script src="<?=HOST?>templates/assets/js/main.js"></script>
	<script src="<?=HOST?>templates/assets/js/input-file.js"></script><!-- endbuild -->
<!--	<script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA&amp;callback=initMap"></script> -->
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
	<script>
		document.addEventListener('DOMContentLoaded',function(){
				CKEDITOR.replace('ckEditor1');
				CKEDITOR.replace('ckEditor2');
				CKEDITOR.replace('ckEditor3');
			});
	</script>
</body>

</html>