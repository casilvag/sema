package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Empresa)
class EmpresaSpec extends Specification {

	void "Nombre no puede ser null"() {
		when:
		def user = new Empresa(
				nombre: null,
				direccion: "calle 123",
				telefono: 1234567
		)
		then:
		!user.validate()
	}
	void "Nombre no puede estar en blanco"() {
		when:
		def user = new Empresa(
				nombre: "",
				direccion: "calle 123",
				telefono: 1234567
		)
		then:
		!user.validate()
	}
	void "Nombre no puede tener mas de 50 caracteres"() {
		when:
		def user = new Empresa(
				nombre: "123456789012345678901234567890123456789012345678901",
				direccion: "calle 123",
				telefono: 1234567
		)
		then:
		!user.validate()
	}
	void "Telefono no puede ser null"() {
		when:
		def user = new Empresa(
				nombre: "Cesar Inc",
				direccion: "calle 123",
				telefono: null
		)
		then:
		!user.validate()
	}
	void "Telefono no puede estar en blanco"() {
		when:
		def user = new Empresa(
				nombre: "Cesar Inc",
				direccion: "calle 123",
				telefono: ''
		)
		then:
		!user.validate()
	}
	void "Telefono no puede ser menor a 7"() {
		when:
		def user = new Empresa(
				nombre: "Cesar Inc",
				direccion: "calle 123",
				telefono: 1234567,
		)
		then:
		user.validate()
	}
	void "Telefono no puede ser mayor a 14"() {
		when:
		def user = new Empresa(
				nombre: "Cesar Inc",
				direccion: "calle 123",
				telefono: 12345678901234,
		)
		then:
		user.validate()
	}
	void "Direccion no puede ser mayor a 50"() {
		when:
		def user = new Empresa(
				nombre: "Cesar Inc",
				direccion: "123456789012345678901234567890123456789012345678901",
				telefono: 1234567
		)
		then:
		!user.validate()
	}
	void "Direccion no puede ser null"() {
		when:
		def user = new Empresa(
				nombre: "Cesar Inc",
				direccion: null,
				telefono: 1234567
		)
		then:
		!user.validate()
	}
	void "Direccion no puede estar en blanco"() {
		when:
		def user = new Empresa(
				nombre: "Cesar Inc",
				direccion: "",
				telefono: 1234567
		)
		then:
		!user.validate()
	}
}
