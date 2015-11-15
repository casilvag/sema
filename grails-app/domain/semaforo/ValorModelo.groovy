package semaforo

class ValorModelo {
	Integer modelo
	Double valor

	static belongsTo =[guia : Guia]

    static constraints = {
    }
}
