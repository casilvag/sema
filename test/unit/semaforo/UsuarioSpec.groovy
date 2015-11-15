package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Usuario)
class UsuarioSpec extends Specification {

    void "El nombre no puede ser null"() {
        when:
        def user = new Usuario(
                nombre: null,
                usuario: "Silva13",
                correo: "asd@gmail.com",
                password: "Aerosmith1234",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "El nombre no puede ser vacio"() {
        when:
        def user = new Usuario(
                nombre: '',
                usuario: "Silva12",
                correo: "asdg@hotmail.com",
                password: "ongjnfgjfA2",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "El nombre no puede tener mas de 50 caracteres"() {
        when:
        def user = new Usuario(
                nombre: "012345678901234567890123456789012345678901234567890",
                usuario: "Silva11",
                correo: "asdkfnkd@live.es",
                password: "fghdfkknfks2W",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "El user no puede ser null"() {
        when:
        def user = new Usuario(
                nombre: "cesar",
                usuario: null,
                correo: "a@unal.edu.co",
                password: "23HNjkjfghdf",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "El user no puede ser vacio"() {
        when:
        def user = new Usuario(
                nombre: "Juan",
                usuario: "",
                correo: "asdjk@hotmail.com",
                password: "fghdH3GHTfff",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "El user no puede tener mas de 50 caracteres"() {
        when:
        def user = new Usuario(
                nombre: "012345678901234567890123456789012345678901234567890",
                usuario: "Silva10",
                correo: "asdjbkdjg@gmail.com",
                password: "fghnnfgdkl2Ydf",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "El correo debe ser valido"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva9",
                correo: "davalexer93gmail.com",
                password: "fghdfhrrrr67Y",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "El correo no puede ser null"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva8",
                correo: null,
                password: "fghdfhrrrr67Y",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "El correo no puede ser vacio"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva7",
                correo: "",
                password: "fghdfhrrrr67Y",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "La contraseña no puede ser nula"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva6",
                correo: "davalexer93@unal.edu.co",
                password: null,
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "La contraseña no puede ser vacia"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva5",
                correo: "davalexer93@hotmail.com",
                password: "",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "La contrasena debe ser valida"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva4",
                correo: "davalexer93@live.com",
                password: "12w",
                edad: 24,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "La edad no puede ser null"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva3",
                correo: "jgkfgl@yahoo.es",
                password: "dlkvnkdmvkmkvdT5",
                edad: null,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "La edad no puede ser vacia"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva2",
                correo: "jgkfgllñ@yahoo.es",
                password: "dlkvnkdmvkvdT5",
                edad: '',
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "La edad no puede ser menor de 18"() {
        when:
        def user = new Usuario(
                nombre: "Samuel",
                usuario: "Silva1",
                correo: "jgkfgllñ@yahoo.es",
                password: "dlkvnkdmvkvdT5",
                edad: 17,
                cedula: 1,
        )
        then:
        !user.validate()
    }

    void "La cedula del usuario debe ser unica"() {
        when:
        def user = new Usuario(
                nombre: "Cesar",
                usuario: "Silva20",
                correo: "jgkfgllgp@yahoo.es",
                password: "dlkvnkdmvkgtvdT5",
                edad: 18,
                cedula: 1234,
        ).save(flush: true, failOnError: true)
        def user2 = new Usuario(
                nombre: "Cesar",
                usuario: "Silva21",
                correo: "jgkfgllujjjyglll@yahoo.es",
                password: "dlkvnkdmvkgjjjtvdT5",
                edad: 18,
                cedula: 1234,
        )
        then:
        !user2.validate()
    }
}