package semaforo
import groovy.json.*
class Cita {
	
	Date fecha
	String lugar
	String estado

	static belongsTo = [seguro : Seguro, vehiculo : Vehiculo]
	
    static constraints = {
		fecha nullable: false, date: true
		lugar blank: false, nullable: false
    }
	String toString() {
		return "Fecha: " + fecha + ", Lugar: " + lugar
	}
}
