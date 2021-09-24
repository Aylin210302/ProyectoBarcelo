<?php
    sesion_start()
    include 'ingresar.php'
		$nombre = $_POST['nombre'];
        $apellidos = $_POST['apellidos'];
        $telefono = $_POST['teléfono'];
        $email = $_POST['email'];
        $fecha_ingreso = date('dd/mm/yyyy', strtotime($_POST['fecha_Ingreso']));
        $fecha_salida = date('dd/mm/yyyy', strtotime($_POST['fecha_Salida']));

		$inserta = "INSERT INTO `huesped` (nombre, apellidos, teléfono, email, fecha_Ingreso, fecha_Salida*/)  VALUES('$nombre', '$apellidos', '$telefono', '$email', '[$fecha_ingreso]', '[$fecha_salida]')";
		$resultado = mysqli_query($conexion, $inserta);
        echo "datos ingresados";
?>