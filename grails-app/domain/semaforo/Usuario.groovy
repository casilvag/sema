package semaforo

import groovy.json.*

class Usuario {

	String nombre
	String usuario
	String correo
	String password
	int edad
	long cedula


	static constraints = {
		nombre  maxSize:50, blank: false, nullable: false
		usuario maxSize:50, blank: false, nullable: false
		correo maxSize:50, blank: false, nullable: false, email: true
		password blank: false, nullable: false, matches: /(\w*([A-Z])+\w*([0-9])+\w*)|(\w*([0-9])+\w*([A-Z])+\w*)/
		edad min: 18, blank: false, nullable: false
		cedula unique: true, blank: false, nullable: false
	}

	String toString() {
		return "Nombre: " + nombre +", Usuario: " + usuario +", Correo: " + correo +",Password: "+ password +" , Edad: " + edad +", Cedula: " + cedula
	}
}
