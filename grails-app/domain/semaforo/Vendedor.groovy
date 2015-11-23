package semaforo

import groovy.json.*

class Vendedor extends Usuario {

	// double salario
	static belongsTo = [empresa: Empresa]
	static hasMany = [cita:Cita]

    static constraints = {
		// salario blank:false
        cita nullable: true
    }
	String toString() {
		return "Nombre: " + nombre
	}

}