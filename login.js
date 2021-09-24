function ingresar(){
	var iUser = document.getElementById('iUser');
	var iPassword = document.getElementById('iPassword');

	var usuario = iUser.value;
	var clave = iPassword.value;

	$.ajax({
		type: "POST",
		url: "ingresar.php",
		data: {user: usuario, pass: clave} ,
		success: function(respuesta){
			var objeto = JSON.parse(respuesta);
			console.log(objeto.respuesta);

			switch(objeto.respuesta){
				case 0:
					var división = document.getElementsByTagName("div");
					var parrafoError = document.createElement("p");
					parrafoError.appendChild(document.createTextNode("Error de usuario o clave"));
					parrafoError.setAttribute("id","parrafoError");
					división[0].appendChild(parrafoError);
					break;
				case 1: 
					window.location.href ="inicio.html";
					break;
			}

		}
	});

}

function salir(){
	$.ajax({
		type: "GET",
		url: "cerrarSesion.php",
		success: function(respuesta){
			console.log(respuesta);
			if(respuesta == 0){
				window.location.href ="index.html";
			}
		}
	});
}