	<?php
		echo '<div class="col-xl-4 col-md-4 col-sm-6 col-6">';
		echo 	'<div class="alert alert-dark video-miniatura">';
		echo 	'<img class="img-fluid" src="'.$_POST["imagen"].'">';		
		echo 	'<hr>';
		echo 	'<div class="descripcion">';
		echo 	'<h6>'.$_POST["nombre"].'</h6>';
		echo 	'<a href="#">Miniatura</a>';
		echo 	'<p>'.$_POST["Descripcion"].'</p>';
		echo 	'Version :<b>'.$_POST["version"].'</b><br>';
		for($i=0;$i<intval($_POST["calificacion"]);$i++){
			echo '<i class="fas fa-star"></i>';
		}
		echo 	'</div>';
		echo 	'</div>';
		echo 	'</div>';	

	?>