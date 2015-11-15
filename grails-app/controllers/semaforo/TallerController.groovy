package semaforo

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.NO_CONTENT
import static org.springframework.http.HttpStatus.OK

@Transactional(readOnly = true)
class TallerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def inicio = {
        def talleres = Taller.list()
        [talleres: talleres]
    }

    def register() {
        if (session.taller != null) {
            flash.message = "error, ya esta registrado"
        } else {
            respond new Taller(params)
        }
    }


    def create() {
        respond new Taller(params)
    }

    // metodos de scaffolding
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Taller.list(params), model: [tallerInstanceCount: Taller.count()]
    }

    def show(Taller tallerInstance) {
        respond tallerInstance
    }

    @Transactional
    def save(Taller tallerInstance) {
        if (tallerInstance == null) {
            notFound()
            return
        }

        if (tallerInstance.hasErrors()) {
            respond tallerInstance.errors, view: 'create'
            return
        }

        tallerInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'Taller.label', default: 'Taller'), tallerInstance.id])
                redirect tallerInstance

            }
            '*' { respond tallerInstance, [status: CREATED] }
        }
    }

    def edit(Taller tallerInstance) {
        respond tallerInstance
    }

    @Transactional
    def update(Taller tallerInstance) {
        if (tallerInstance == null) {
            notFound()
            return
        }

        if (tallerInstance.hasErrors()) {
            respond tallerInstance.errors, view:'edit'
            return
        }

        tallerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Taller.label', default: 'Taller'), tallerInstance.id])
                redirect tallerInstance
            }
            '*'{ respond tallerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Taller tallerInstance) {

        if (tallerInstance == null) {
            notFound()
            return
        }

        tallerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Taller.label', default: 'Taller'), tallerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }



    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'taller.label', default: 'Taller'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}


