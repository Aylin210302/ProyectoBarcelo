function reservar(){
    console.log("Insertando");

    var cajaNombre = document.getElementById('Inombre');
	var cajaApellidos = document.getElementById('Iapellidos');
	var cajaTelefono = document.getElementById('Itelefono');
	var cajaEmail = document.getElementById('Iemail');
	var cajaFecha_ingreso = new Date(document.getElementById('Ifecha_ingreso'));
	var cajaFecha_salida = new Date(document.getElementById('Ifecha_salida'));

    console.log(cajaNombre.value + ": " + cajaFecha_salida.value);

	var nombre = cajaNombre.value;
	var apellidos = cajaApellidos.value;
	var telefono = cajaTelefono.value;
	var email = cajaEmail.value;
	var ingreso = cajaFecha_ingreso.value;
	var salida = cajaFecha_salida.value;

	$.ajax({
		type: "POST",
		url: "insertar.php",
		data: {nom: nombre, ape: apellidos, tel: telefono, ema: email, ingr: ingreso, sal: salida} ,
		success: function(respuesta){
			var objeto = JSON.parse(respuesta);
			console.log(objeto.respuesta);

			switch(objeto.respuesta){
				case 0:
					var división = document.getElementsByTagName("div");
					var parrafoError = document.createElement("p");
					parrafoError.appendChild(document.createTextNode("Error al insertar huesped"));
					parrafoError.setAttribute("id","parrafoError");
					división[0].appendChild(parrafoError);
					break;
				case 1: 
					window.location.href ="habitaciones.html";
					break;
			}

		}
	});
			
}