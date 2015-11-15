package semaforo
import groovy.json.*

class Cliente extends Usuario{

	String tarjetaCredito
	
	static hasMany = [citas:Cita, vehiculos: Vehiculo]

    static constraints = { 
		tarjetaCredito nullable:false, blank:false, creditCard: true, unique: true
    }
	
	String toString() {
		return "TarjetaCredito: " + tarjetaCredito
	}
}
