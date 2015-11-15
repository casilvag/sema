package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Vehiculo)
class VehiculoSpec extends Specification {

    /*void "la placa debe ser unica"() {
            when :
            def vehiculo = new Vehiculo(
                    placa: "XTY-123",
                    modelo: 78,
                    color: "rojo",
                    marca: "chevrolet",
                    //user
                    nombre: "carajo",
                    usuario: "Silva21",
                    correo: "asdklop@gmail.com",
                    password: "Aerosmith1234",
                    edad: 24,
                    cedula: 12,
                    //cliente
                    tarjetaCredito: "6011312088820215",
                    seguro: null


            ).save(flush:true, failOnError:true)
            def vehiculo2 = new Vehiculo(
                    placa: "XTY-123",
                    modelo: 90,
                    color: "asdhg@gmail.com",
                    marca: "Aerosmith1234",
                    //user
                    nombre: "juan",
                    usuario: "Silva13",
                    correo: "asd@gmail.com",
                    password: "Aerosmith1234",
                    edad: 24,
                    cedula: 1,
                    //vehiculo
                    tarjetaCredito: "349379641801145",
                    seguro: null

            )
            then :
            !vehiculo2.validate()
        }
*/
        void "la placa no debe ser nula"() {
                when :
                def vehiculo = new Vehiculo(
                        placa: null,
                        modelo: 78,
                        color: "rojo",
                        marca: "chevrolet",
                        //user
                        nombre: "carajo",
                        usuario: "Silva22",
                        correo: "asdkloplp@gmail.com",
                        password: "Aerosmith1234",
                        edad: 24,
                        cedula: 12,
                        //cliente
                        tarjetaCredito: "9011312088820215"
                )
                then:
                !vehiculo.validate()
        }

        void "la placa no debe sr vacia"() {
                when :
                def vehiculo = new Vehiculo(
                        placa: "",
                        modelo: 78,
                        color: "rojo",
                        marca: "chevrolet",
                        //user
                        nombre: "carajo",
                        usuario: "Silva221",
                        correo: "asdkloplppl@gmail.com",
                        password: "Aerosmith1234",
                        edad: 24,
                        cedula: 12,
                        //cliente
                        tarjetaCredito: "9011312088820285"
                )
                then:
                !vehiculo.validate()
        }


    }

