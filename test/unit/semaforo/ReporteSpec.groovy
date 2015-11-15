package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Reporte)
class ReporteSpec extends Specification {

    void "fecha debe ser valida"() {
        when :
        def reporte = new Reporte(
                fecha: new Date()
        )
        then:
        reporte.validate()
    }
}
