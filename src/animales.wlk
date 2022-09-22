class Vaca {
	var convieneVacunar = true
	var tieneSed
	var peso
	
	method tieneHambre() = peso < 200
	method peso() = peso
	method tieneSed() = tieneSed
	method convieneVacunar() = convieneVacunar
	
	/** Cuando come aumenta el peso en lo que comió / 3 y le da sed */
	method comer(cantidad) {
		peso += cantidad / 3
		tieneSed = true
	}
	
	method beber() {
		tieneSed = false
		peso -= 0.5
	}
	
	method vacunar() {
		convieneVacunar = false
	}
}

class Cerdo {
	var peso
	var tieneHambre
	var tieneSed	
	var cantidadDeVecesQueComioDesdeBeber = 0
	var cuantoComioMaximo = 0
	
	method tieneHambre() = tieneHambre
	method peso() = peso
	method tieneSed() = tieneSed
	method convieneVacunar() = true
	
	/** Cuando come aumenta el peso en lo que comió – 200 g 
		(si come menos de 200 g no aumenta nada); 
		si come más de 1 kg se le va el hambre, si no, no */
	method comer(cantidad) {
		peso += 0.max(cantidad - 0.2)
		if(cantidad > 1)
			tieneHambre = false
		cantidadDeVecesQueComioDesdeBeber += 1
		if(cantidadDeVecesQueComioDesdeBeber > 3)
			tieneSed = true
		cuantoComioMaximo = cuantoComioMaximo.max(cantidad)
	}
	
	method beber() {
		tieneSed = false
		tieneHambre = true
		cantidadDeVecesQueComioDesdeBeber = 0
	}
	
	method vacunar() {}
}

class Gallina {
	const property peso = 4
	var cantidadDeVecesQueComio = 0
	
	method tieneHambre() = true
	method tieneSed() = false
	method convieneVacunar() = false
	
	method comer(cantidad) {
		cantidadDeVecesQueComio += 1
	}
	
	method beber() {}
	
	method vacunar() {}
}