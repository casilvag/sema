package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Cita)
class CitaSpec extends Specification {

    void "La fecha no puede ser null"() {
        when :
        def cita = new Cita(
            fecha: null,
            lugar: "Centro Andino",
            tarjetaCredito:"4916049558035384"
        )
        then:
        !cita.validate()
    }

    void "La fecha debe ser valida"() {
        when :
        def cita = new Cita(
                fecha: 1,
                lugar: "Centro Andino",
                tarjetaCredito:"4916049558035384"
        )
        then:
        !cita.validate()
    }


    void "el lugar no puede ser null"() {
        when :
        def cita = new Cita(
                fecha: new Date(),
                lugar: null,
                tarjetaCredito:"9916049553037381"

        )
        then:
        !cita.validate()
    }


    void "el lugar no puede ser vacio"() {
        when :
        def cita = new Cita(
                fecha: new Date(),
                lugar:"",
                tarjetaCredito:"9916049553034381"
        )
        then:
        !cita.validate()
    }

    void "la tarjeta de credito debe ser valida"() {
        when :
        def cita = new Cita(
                fecha: new Date(),
                lugar:"Centro Andino",
                tarjetaCredito:"991604955303438"
        )
        then:
        !cita.validate()
    }

}
