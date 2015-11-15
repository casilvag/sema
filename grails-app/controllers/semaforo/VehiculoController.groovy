package semaforo

import groovy.sql.Sql

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

@Transactional(readOnly = true)
class VehiculoController {
    def dataSource

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE", saveApp: "POST", updateApp: "PUT"]

    
    def getTipoVehiculo(){
        def query = "select distinct(tipo_vehiculo) as tipo from guia order by tipo asc"
        def sql = Sql.newInstance(dataSource)
        def datos = []
        sql.eachRow(query){ row ->
            datos.add(row.tipo)
        }
        sql.close()
        render datos as JSON
    }

    def getMarcas(){
        def query = "select distinct(marca) as marca from guia where tipo_vehiculo='"+ params.tipo +"' order by marca asc"
        def sql = Sql.newInstance(dataSource)
        def datos = []
        sql.eachRow(query){ row ->
            datos.add(row.marca)
        }
        sql.close()
        render datos as JSON
    }

    def getReferencia1(){
        def query = "select distinct(referencia1) as referencia1 from guia where marca='${params.marca}' order by referencia1 asc"
        def sql = Sql.newInstance(dataSource)
        def datos = []
        sql.eachRow(query){ row ->
            datos.add(row.referencia1)
        }
        sql.close()
        render datos as JSON
    }

    def getReferencia2(){
        def query = "select distinct(referencia2) as referencia2 from guia where marca='${params.marca}' and referencia1='${params.referencia1}' order by referencia2 asc"
        def sql = Sql.newInstance(dataSource)
        def datos = []
        sql.eachRow(query){ row ->
            datos.add(row.referencia2)
        }
        sql.close()
        render datos as JSON
    }

    def getReferencia3(){
        def query = "select id,codigo,referencia3 from guia where marca='${params.marca}' and referencia1='${params.referencia1}' and referencia2='${params.referencia2}' order by referencia3 asc"
        def sql = Sql.newInstance(dataSource)
        def datos = []
        sql.eachRow(query){ row ->
            datos.add([id : row.id, codigo: row.codigo, referencia3 : row.referencia3])
        }
        sql.close()
        render datos as JSON
    }
	
	def getModelos(){
		def query = "select * from valor_modelo where guia_id=${params.id}"
		def sql = Sql.newInstance(dataSource)
        def datos = []
        sql.eachRow(query){ row ->
			datos.add([id : row.id, modelo : row.modelo, valor : row.valor])
		}
		render datos as JSON
	}
	
	def getSeguros(){
		def valorModelo = ValorModelo.findById(params.id);
		def seguros = Seguro.findAllWhere(valorModelo : valorModelo)
		def datos = []
		seguros.each {
			datos.add([
				id : it.id,
				valor : it.valor,
				coberturaTotal : it.coberturaTotal,
				deducibleTotal : it.deducibleTotal,
				coberturaParcial : it.coberturaParcial,
				deducibleParcial : it.deducibleParcial,
				abogado : it.abogado,
				vehiculoRemplazo : it.vehiculoRemplazo,
				gastosTransporte : it.gastosTransporte,
				grua : it.grua,
				chofer : it.chofer,
				responsabilidadCivil : it.responsabilidadCivil,
				empresa : it.empresa.nombre	
			])
		}
		render datos as JSON
	}

    def createRequest(){

    }

    def indexApp(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vehiculo.list(params), model:[vehiculoInstanceCount: Vehiculo.count()]
        // accion por defecto render index view con la lista de instancias
    }

    def createApp(){
        respond new Vehiculo(params)
    }

    def showApp(Vehiculo vehiculoInstance) {
        respond vehiculoInstance
    }

    @Transactional
    def saveApp(Vehiculo vehiculoInstance) {
        if (vehiculoInstance == null) {
            notFound()
            return
        }

        if (vehiculoInstance.hasErrors()) {
            respond vehiculoInstance.errors, view:'createApp'
            return
        }

        vehiculoInstance.save flush:true

        //respond vehiculoInstance, view: 'showApp'
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect action: "showApp", id: vehiculoInstance.id //vehiculoInstance
            }
            '*' { respond vehiculoInstance, [status: CREATED] }
        }
    }

    def editApp(Vehiculo vehiculoInstance) {
        respond vehiculoInstance
    }

    @Transactional
    def updateApp(Vehiculo vehiculoInstance) {
        if (vehiculoInstance == null) {
            notFound()
            return
        }

        if (vehiculoInstance.hasErrors()) {
            respond vehiculoInstance.errors, view:'editApp'
            return
        }

        vehiculoInstance.save flush:true

        //respond vehiculoInstance, view: 'editApp'
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect action: "showApp", id: vehiculoInstance.id //vehiculoInstance
            }
            '*'{ respond vehiculoInstance, [status: OK] }
        }
    }

    @Transactional
    def deleteApp(Vehiculo vehiculoInstance) {

        if (vehiculoInstance == null) {
            notFound()
            return
        }

        vehiculoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect action:"indexApp", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }


    //************************************************************************************
    //scaffold
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vehiculo.list(params), model:[vehiculoInstanceCount: Vehiculo.count()]
        // accion por defecto render index view con la lista de instancias
    }

    def show(Vehiculo vehiculoInstance) {
        respond vehiculoInstance
        // grails busca un id en la peticion y buca el objeto con ese id y lo trae
        //respond  retorna esta instancia y luego renderiza la vista show
    }

    def create() {
        respond new Vehiculo(params)
        // crea la instancia con los parametros, luego rendre la vista create
    }

    @Transactional
    def save(Vehiculo vehiculoInstance) {
        if (vehiculoInstance == null) {
            notFound()
            return
        }

        if (vehiculoInstance.hasErrors()) {
            respond vehiculoInstance.errors, view:'create'
            return
        }

        vehiculoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect vehiculoInstance
            }
            '*' { respond vehiculoInstance, [status: CREATED] }
        } //esta accion es llamada desde create view
        // busca una instancia con id provisto si no la hay..
        // si la hay verifica en busca de errores de validacion, si hay re-render la vista create
        //form es usado en el caso de envio de formularios, cuando el formulario en la create view
        // es enviado y se guarda el resultado en la instancia vehiculo se usa el tag message como metodos
        // para almacenar un mensaje de exito en el flash, luego llamamos redirigir que no manda a show action
    }

    def edit(Vehiculo vehiculoInstance) {
        respond vehiculoInstance
    }

    @Transactional
    def update(Vehiculo vehiculoInstance) {
        if (vehiculoInstance == null) {
            notFound()
            return
        }

        if (vehiculoInstance.hasErrors()) {
            respond vehiculoInstance.errors, view:'edit'
            return
        }

        vehiculoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect vehiculoInstance
            }
            '*'{ respond vehiculoInstance, [status: OK] }
        }
    }// response redirige a editview,

    @Transactional
    def delete(Vehiculo vehiculoInstance) {

        if (vehiculoInstance == null) {
            notFound()
            return
        }

        vehiculoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
