package semaforo
import groovy.json.*
class Reporte {

	Date fecha
    static constraints = {
		fecha date:true
    }
	String toString() {
		return "Fecha: " + fecha 
	}
}
