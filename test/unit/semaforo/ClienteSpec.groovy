package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Cliente)
class ClienteSpec extends Specification {

	void "Tarjeta de Creditono no puede ser null"() {
        when:
        def user = new Cliente(
                nombre: "Cesar",
                usuario: "Silva13",
                correo: "asd@gmail.com",
                password: "Aerosmith1234",
                edad: 24,
                cedula: 1,
				tarjetaCredito: null
        )
        then:
        !user.validate()
    }
	void "Tarjeta de Creditono no puede estar en blanco"() {
		when:
		def user = new Cliente(
				nombre: "Cesar",
				usuario: "Silva13",
				correo: "asd@gmail.com",
				password: "Aerosmith1234",
				edad: 24,
				cedula: 1,
				tarjetaCredito: ""
		)
		then:
		!user.validate()
	}
	void "Tarjeta de Creditono no es valida"() {
        when:
        def user = new Cliente(
                nombre: "Cesar",
                usuario: "Silva13",
                correo: "asd@gmail.com",
                password: "Aerosmith1234",
                edad: 24,
                cedula: 1,
				tarjetaCredito: "kjn23kjn2"
        )
        then:
        !user.validate()
    }
	void "La tarjeta de Credito debe ser unica"(){
		when :
			def user = new Cliente(
				nombre: "Cesar",
                usuario: "Silva13",
                correo: "asd@gmail.com",
                password: "Aerosmith1234",
                edad: 24,
                cedula: 1,
				tarjetaCredito: "5387815973019667"
			).save(flush:true, failOnError:true)
			def user2 = new Cliente(
				nombre: "Cesar",
                usuario: "Silva13",
                correo: "ad@gmail.com",
                password: "Aerosmith1234",
                edad: 24,
                cedula: 2,
				tarjetaCredito: "5387815973019667"
			)
		then :
			!user2.validate()
	}
}
