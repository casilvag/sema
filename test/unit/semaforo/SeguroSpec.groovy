package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Seguro)
class SeguroSpec extends Specification {

	void "Fecha de compra no puede ser null"() {
		when:
		def user = new Seguro(
			fechaCompra: null,
			fechaVencimiento: "03/02/2016",
			valor:120.000,
			//empresa
				nombre: "CesarInc",
				direccion: "calle 123",
				telefono: 12345678,
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"			
		)
		then:
		!user.validate()
	}
	void "Fecha de compra no puede estar en blanco"() {
		when:
		def user = new Seguro(
			fechaCompra: "",
			fechaVencimiento: "03/02/2016",
			valor:120.000,
			//empresa
				nombre: "CesarInc",
				direccion: "calle 123",
				telefono: 12345678,
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
	void "Fecha de compra no es valida"() {
		when:
		def user = new Seguro(
			fechaCompra: "sdkajab",
			fechaVencimiento: "03/02/2016",
			valor:120.000,
			//empresa
				nombre: "CesarInc",
				direccion: "calle 123",
				telefono: 12345678,
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
	void "Fecha de Vencimiento no puede ser null"() {
		when:
		def user = new Seguro(
			fechaCompra: "02/02/2016",
			fechaVencimiento: null,
			valor:120.000,
			//empresa
				nombre: "CesarInc",
				direccion: "calle 123",
				telefono: 12345678,
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
	void "Fecha de Vencimiento no puede estar en blanco"() {
		when:
		def user = new Seguro(
			fechaCompra: "02/02/2016",
			fechaVencimiento: "",
			valor:120.000,
			//empresa
				nombre: "CesarInc",
				direccion: "calle 123",
				telefono: 12345678,
				//vehiculo
					placa:"RDZ706",
					modelo:2007,
					color:"negro",
					marca:"Hyundai"
		)
		then:
		!user.validate()
	}
	void "Fecha de Vencimiento no es valida"() {
		when:
		def user = new Seguro(
			fechaCompra: "02/02/2016",
			fechaVencimiento: "asdvam",
			valor:120.000,
			//empresa
				nombre: "CesarInc",
				direccion: "calle 123",
				telefono: 12345678,
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
 