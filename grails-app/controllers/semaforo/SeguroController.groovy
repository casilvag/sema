package semaforo

class SeguroController {
    static scaffold = true
    def index() {}

    def cargarDatos(){

    }

    def cargar(){
        def texto ="";
        def cont = 0
        request.getFile('csv').inputStream.eachLine { line ->
            cont++
            if(cont % 1000 == 0){
                println cont
            }
            if(cont > 1){
                def partes = line.split(';')
                def guia = Guia.findByCodigo(partes[0]);
                def valorModelo = ValorModelo.findByGuiaAndModelo(guia, partes[1]);
                def empresa = Empresa.findByNombre('Mapfre')
                empresa.seguros.each {
                    it.delete()
                }
                empresa.seguros.clear()
                def seguro = new Seguro(
                        valor : partes[2],
                        coberturaTotal : partes[3],
                        deducibleTotal : partes[4],
                        coberturaParcial : partes[5],
                        deducibleParcial : partes[6],
                        abogado : partes[7] == 'si' ? true : false,
                        vehiculoRemplazo : partes[8] == 'si' ? true : false,
                        gastosTransporte : partes[9] == 'si' ? true : false,
                        grua : partes[10] == 'si' ? true : false,
                        chofer : partes[11] == 'si' ? true : false,
                        responsabilidadCivil : partes[12],
                        empresa : empresa,
                        valorModelo : valorModelo
                ).save(failOnError :true)
                empresa.save(flush : true)
            }
        }
        render "Datos cargados ;)"
    }
}
