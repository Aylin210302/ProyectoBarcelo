<?php
    $direccion = "localhost:3308";
	$usuarioBD = "root";
	$claveBD = "";
	$bd = "hotel_barcelo";

	if( isset($_POST["user"]) && isset($_POST['pass']) ){
		$conexion = new mysqli($direccion,$usuarioBD, $claveBD,$bd);
		$conexion->set_charset("utf-8");

		$nombre = $_POST['user'];
		$clave = $_POST['pass'];

		$usuario = $_POST['usuario'];
        $clave = $_POST['clave'];
        $email = $_POST['email'];

		$inserta = "INSERT INTO `usuarios` (usuario, clave, email) VALUES('$usuario', '$clave', '$email')";
		$res = $conexion->query($inserta);
		if($res->num_rows == 0){
			echo json_encode(array("respuesta" => 0));
		}else if($res->num_rows == 1){
			session_start();
			echo json_encode(array("respuesta" => 1));
		}
        echo "datos ingresados";
    }
?>