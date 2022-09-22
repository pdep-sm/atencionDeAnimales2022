
class ComederoNormal {
	const capacidad
	var cantidadDeRaciones
	const tamanioDeRacion
	
	/** Puede atender a los animales con hambre que 
		pesen menos de lo que soporta el comedero */
	method puedeAtender(animal) = 
		animal.tieneHambre() and 
		animal.peso() <= capacidad
		
	/** Da de comer una cantidad fija que varía para cada comedero */
	method atender(animal) {
		animal.comer(tamanioDeRacion)
		cantidadDeRaciones -= 1
	}
}

class ComederoInteligente {	
	var cantidadActual
	const capacidadMaxima
	
	/** Puede atender a cualquier animal con hambre */
	method puedeAtender(animal) = 
		animal.tieneHambre()
		
	/** Da de comer a un animal su peso / 100 */
	method atender(animal) {
		const cantidad = animal.peso() / 100
		animal.comer(cantidad)
		cantidadActual -= cantidad
	}
}

class Bebedero {
	var cantidadDeAnimalesAtendidos = 0
		
	/** Puede atender a cualquier animal con hambre */
	method puedeAtender(animal) = 
		animal.tieneSed()
	
	/** Da de beber a un animal */	
	method atender(animal) {
		animal.beber()
		cantidadDeAnimalesAtendidos += 1
	}
}

class Vacunatorio {	
	var cantidadDeVacunas = 0
	
	/** Puede atender a cualquier animal que conviene vacunar */
	method puedeAtender(animal) = 
		animal.convieneVacunar()
		
	/** Vacuna a un animal, */
	method atender(animal) {
		animal.vacunar()
		cantidadDeVacunas -= 1
	}
}