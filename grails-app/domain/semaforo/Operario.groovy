package semaforo

class Operario extends Usuario{
	String especialidad
	
	static belongsTo = [taller: Taller]
	
    static constraints = {
		especialidad blank: false, nullable: false
    }

	String toString() {
		return "Especialidad: " + especialidad
	}
}
