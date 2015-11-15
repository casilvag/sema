package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Operario)
class OperarioSpec extends Specification {

    void "la especialidad no puede ser nula"() {
        when:
        def empleado = new Operario(
                nombre: "david",
                direccion: "calle 123",
                //operario
                especialidad: null,
        )
        then:
        !empleado.validate()
    }

    void "la especialidad no puede ser vacia"() {
        when:
        def empleado = new Operario(
                nombre: "david",
                direccion: "calle 123",
                //operario
                especialidad: "",
        )
        then:
        !empleado.validate()
    }

    void "el nombre no puede ser nulo"() {
        when:
        def empleado = new Operario(
                nombre: null,
                direccion: "calle 123",
                //operario
                especialidad: "frenos",
        )
        then:
        !empleado.validate()
    }

    void "El nombre no puede ser vacio"() {
        when:
        def empleado = new Operario(
                nombre: "",
                direccion: "calle 123",
                //operario
                especialidad: "embragues",
        )
        then:
        !empleado.validate()
    }

    void "El nombre no puede tener mas de 50 caracteres"() {
        when:
        def empleado = new Operario(
                nombre: "123456789012345678901234567890123456789012345678901",
                direccion: "holamundo #80 a -25",
                //operario
                especialidad: "vidrios"
        )
        then:
        !empleado.validate()
    }

    void "la direccion no puede ser vacia"() {
        when:
        def empleado = new Operario(
                nombre: "Samuel",
                direccion: "",
                //operario
                especialidad: "puertas",
        )
        then:
        !empleado.validate()
    }

    void "la direccion no puede ser nula"() {
        when:
        def empleado = new Operario(
                nombre: "Samuel",
                direccion: null,
                //operario
                especialidad: "puertas",
        )
        then:
        !empleado.validate()
    }

    void "la direccion no puede tener mas de 50 caracteres"() {
        when:
        def empleado = new Operario(
                nombre: "Juan",
                direccion: "123456789012345678901234567890123456789012345678901",
                //operario
                especialidad: "carroceria"
        )
        then:
        !empleado.validate()
    }
}