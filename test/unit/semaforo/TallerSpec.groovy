package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Taller)
class TallerSpec extends Specification {

    void "Nombre Taller no puede ser null"() {
		when:
		def user = new Taller(
			nombre: null,
			direccion:"calle 123",
			//operario
				especialidad: "reaspero",
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"			
		)
		then:
		!user.validate()
	}
	void "Nombre Taller no puede estar en blanco"() {
		when:
		def user = new Taller(
			nombre: "",
			direccion:"calle 123",
			//operario
				especialidad: "reaspero",
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
	void "Nombre Taller no puede tener mas de 50 caracteres"() {
		when:
		def user = new Taller(
			nombre: "123456789012345678901234567890123456789012345678901",
			direccion:"calle 123",
			//operario
				especialidad: "reaspero",
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
	void "Direccion no puede estar en blanco"() {
		when:
		def user = new Taller(
			nombre: "TalelrCesar",
			direccion:"",
			//operario
				especialidad: "reaspero",
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
	void "Direccion no puede ser null"() {
		when:
		def user = new Taller(
			nombre: "TalelrCesar",
			direccion: null,
			//operario
				especialidad: "reaspero",
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
	void "Direccion no puede tener mas de 50 caracteres"() {
		when:
		def user = new Taller(
			nombre: "TalelrCesar",
			direccion:"123456789012345678901234567890123456789012345678901",
			//operario
				especialidad: "reaspero",
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
}
