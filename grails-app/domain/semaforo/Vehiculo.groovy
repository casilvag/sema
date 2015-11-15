package semaforo
import groovy.json.*

class Vehiculo {
	
	String placa
	String color
	Double valor
	Double coberturaTotal
	Double coberturaParcial

	static belongsTo = [cliente: Cliente, seguro: Seguro]
	//static hasOne = [seguro: Seguro]

    static constraints = {
		seguro nullable: true
		placa unique: true, blank: false, nullable: false, matches: /[A-Z]{3}-\d{3}/
		color blank: false, nullable: false
    }
	String toString() {
		return "Placa: " + placa +", Modelo: " + modelo +", Color: " + color +", Marca: " + marca
	}
}
