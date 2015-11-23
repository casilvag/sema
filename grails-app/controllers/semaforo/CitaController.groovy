package semaforo


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CitaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def indexApp(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cita.list(params), model: [citaInstanceCount: Cita.count()]
    }

    def showApp(Cita citaInstance) {
        respond citaInstance
    }

    def createApp() {
        respond new Cita(params)
    }

    @Transactional
    def saveApp(Cita citaInstance) {
        if (citaInstance == null) {
            notFound()
            return
        }

        if (citaInstance.hasErrors()) {
            respond citaInstance.errors, view: 'createApp'
            return
        }

        citaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cita.label', default: 'Cita'), citaInstance.id])
                //redirect citaInstance
                redirect action: "showApp", id: citaInstance.id
            }
            '*' { respond citaInstance, [status: CREATED] }
        }
    }

    def editApp(Cita citaInstance) {
        respond citaInstance
    }

    @Transactional
    def updateApp(Cita citaInstance) {
        if (citaInstance == null) {
            notFound()
            return
        }

        if (citaInstance.hasErrors()) {
            respond citaInstance.errors, view: 'editApp'
            return
        }

        citaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cita.label', default: 'Cita'), citaInstance.id])
                //redirect citaInstance
                redirect action: "showApp", id: citaInstance.id
            }
            '*' { respond citaInstance, [status: OK] }
        }
    }

    @Transactional
    def deleteApp(Cita citaInstance) {

        if (citaInstance == null) {
            notFound()
            return
        }

        citaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cita.label', default: 'Cita'), citaInstance.id])
                redirect action: "indexApp", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }


    //*************************scaffold****************************************
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cita.list(params), model: [citaInstanceCount: Cita.count()]
    }

    def show(Cita citaInstance) {
        respond citaInstance
    }

    def create() {
        respond new Cita(params)
    }

    @Transactional
    def save(Cita citaInstance) {
        if (citaInstance == null) {
            notFound()
            return
        }

        if (citaInstance.hasErrors()) {
            respond citaInstance.errors, view: 'create'
            return
        }

        citaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cita.label', default: 'Cita'), citaInstance.id])
                redirect citaInstance
            }
            '*' { respond citaInstance, [status: CREATED] }
        }
    }

    def edit(Cita citaInstance) {
        respond citaInstance
    }

    @Transactional
    def update(Cita citaInstance) {
        if (citaInstance == null) {
            notFound()
            return
        }

        if (citaInstance.hasErrors()) {
            respond citaInstance.errors, view: 'edit'
            return
        }

        citaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cita.label', default: 'Cita'), citaInstance.id])
                redirect citaInstance
            }
            '*' { respond citaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cita citaInstance) {

        if (citaInstance == null) {
            notFound()
            return
        }

        citaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cita.label', default: 'Cita'), citaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cita.label', default: 'Cita'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
