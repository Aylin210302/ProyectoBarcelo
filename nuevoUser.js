function insertar(){
	console.log("Insertando");
    var cajaUsuario = document.getElementById('Iusuario');
	var cajaClave = document.getElementById('Iclave');
	var cajaEmail = document.getElementById('Iemail');

	console.log(cajaUsuario.value + ": " + cajaClave.value);

	var nombre = cajaUsuario.value;
	var clave = cajaClave.value;
	var email = cajaEmail.value;

	$.ajax({
		type: "POST",
		url: "nuevoUser.php",
		data: {user: nombre, pass: clave, ema: email},
		success: function(respuesta){
			//var objeto = JSON.parse(respuesta);
			console.log(respuesta);
            window.location.href ="index.html";
			/*switch(objeto.respuesta){
				case 0:
					var división = document.getElementsByTagName("div");
					var parrafoError = document.createElement("p");
					parrafoError.appendChild(document.createTextNode("Error al insertar usuario"));
					parrafoError.setAttribute("id","parrafoError");
					división[0].appendChild(parrafoError);
					break;
				case 1: 
					window.location.href ="index.html";
					break;
			}*/
		}
	});
			
}