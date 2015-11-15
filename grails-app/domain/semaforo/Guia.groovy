package semaforo

class Guia {
	String codigo
	String tipo_vehiculo
	String marca
	String referencia1
	String referencia2
	String referencia3

	static hasMany = [valores : ValorModelo]

    static constraints = {
    	tipo_vehiculo blank: true, nullable: true
    	marca blank: true, nullable: true
    	referencia1 blank: true, nullable: true
    	referencia2 blank: true, nullable: true
    	referencia3 blank: true, nullable: true
    }
}
