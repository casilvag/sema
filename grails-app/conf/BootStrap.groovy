import java.io.BufferedReader
import java.io.FileReader
import semaforo.Guia
import semaforo.ValorModelo
import semaforo.Empresa
import semaforo.Seguro

class BootStrap {

	def init = { servletContext ->
		try {
			def br = new BufferedReader(new FileReader("guias/guia_noviembre_2015.csv"))
			def line
			def cont = 0
			while ((line = br.readLine()) != null) {
				cont++
				if(cont % 1000 == 0){
					println cont
				}
				if(cont == 1) continue


				line = line.replaceAll('"','')
				def partes = line.split(',')

				def guia = new Guia(
						codigo: partes[3],
						tipo_vehiculo: partes[2],
						marca: partes[1],
						referencia1: partes[5],
						referencia2: partes[6],
						referencia3: partes[7]
				).save(failOnError : true)

				def ano = 1970;
				def columna = 11;
				while(ano <= 2016){
					if(partes[columna] != "0"){
						guia.addToValores(new ValorModelo(
								modelo : ano,
								valor : Double.parseDouble(partes[columna] + "000"),
								guia : guia
						).save(failOnError : true))
					}
					ano++;
					columna++;
				}

				guia.save(failOnError : true)

			}
		}catch(Exception e){
			println e
		}

		def guiaPrueba = Guia.findByCodigo("00601029");
		def valorModelo = ValorModelo.findByGuiaAndModelo(guiaPrueba, 2016);

		def empresa1 = new Empresa(
				nombre : 'Mapfre',
				direccion : 'Cr 1',
				telefono : '12345678'
		).save(failOnError : true)

		def empresa2 = new Empresa(
				nombre : 'Sura',
				direccion : 'Cr 2',
				telefono : '12345678'
		).save(failOnError : true)

		def empresa3 = new Empresa(
				nombre : 'Allianz',
				direccion : 'Cr 3',
				telefono : '12345678'
		).save(failOnError : true)

		/*def seguro1 = new Seguro(
			valor : 8000000,
			coberturaTotal : 117000000,
			deducibleTotal : 'No aplica',
			coberturaParcial : 117000000,
			deducibleParcial : '10% o 1SMLV',
			abogado : true,
			vehiculoRemplazo : true,
			gastosTransporte : true,
			grua : true,
			chofer : false,
			responsabilidadCivil : 3000000000,
			empresa : empresa1,
			valorModelo : valorModelo
		).save(failOnError : true)*/

		def seguro2 = new Seguro(
				valor : 7500000,
				coberturaTotal : 120000000,
				deducibleTotal : '5% o 5SMLV',
				coberturaParcial : 120000000,
				deducibleParcial : '10% o 1SMLV',
				abogado : false,
				vehiculoRemplazo : false,
				gastosTransporte : true,
				grua : true,
				chofer : false,
				responsabilidadCivil : 2000000000,
				empresa : empresa2,
				valorModelo : valorModelo
		).save(failOnError : true)

		def seguro3 = new Seguro(
				valor : 15000000,
				coberturaTotal : 200000000,
				deducibleTotal : 'No aplica',
				coberturaParcial : 117000000,
				deducibleParcial : '10% o 1SMLV',
				abogado : true,
				vehiculoRemplazo : true,
				gastosTransporte : true,
				grua : true,
				chofer : true,
				responsabilidadCivil : 5000000000,
				empresa : empresa3,
				valorModelo : valorModelo
		).save(failOnError : true)


	}
	def destroy = {
	}
}