package semaforo
import groovy.json.*


class Seguro {

	Double valor
	Double coberturaTotal
	String deducibleTotal
	Double coberturaParcial
	String deducibleParcial
	Boolean abogado
	Boolean vehiculoRemplazo
	Boolean gastosTransporte
	Boolean grua
	Boolean chofer
	Double responsabilidadCivil 
	
	static belongsTo = [empresa: Empresa, valorModelo : ValorModelo]

    static constraints = {
		valor blank: false, nullable: false
		coberturaTotal blank: false, nullable: false
		deducibleParcial blank: false, nullable: false
		coberturaParcial blank: false, nullable: false
		deducibleParcial blank: false, nullable: false
		abogado blank: false, nullable: false
		vehiculoRemplazo blank: false, nullable: false
		gastosTransporte blank: false, nullable: false
		grua blank: false, nullable: false
		chofer blank: false, nullable: false
		responsabilidadCivil blank: false, nullable: false
    }

}
