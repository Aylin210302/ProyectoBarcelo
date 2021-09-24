<?php 
    $direccion = "localhost:3308";
	$usuarioBD = "root";
	$claveBD = "";
	$bd = "hotel_barcelo";
	session_start();

	if( isset($_POST["user"]) && isset($_POST['pass']) ){
		$conexion = new mysqli($direccion,$usuarioBD, $claveBD,$bd);
		$conexion->set_charset("utf-8");

		$usuario = $_POST['user'];
		$clave = $_POST['pass'];

		$ingresar = "SELECT * FROM `usuarios` WHERE `usuario` = '$usuario' AND `clave` = '$clave'";
		$ingresar_final = $conexion->query($ingresar);

		if($ingresar_final->num_rows == 0){
			echo json_encode(array("respuesta" => 0));
		}else if($ingresar_final->num_rows == 1){
			echo json_encode(array("respuesta" => 1));
		}
	}
?>
