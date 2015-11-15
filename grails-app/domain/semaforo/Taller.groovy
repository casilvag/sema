package semaforo
import groovy.json.*
class Taller {
	
	String nombre
	String direccion
	String especialidad
	
	static hasMany = [operarios: Operario, vehiculos: Vehiculo]
	
    static constraints = {
		nombre blank: false, nullable: false, maxSize: 50
		direccion  maxSize: 50,blank: false, nullable: false
		especialidad maxSize: 50,blank: false, nullable: false
	}
	String toString() {
		return "Nombre: " + nombre +", Dirección: " + direccion +", Especialidad: " + espe
	}
    
}
