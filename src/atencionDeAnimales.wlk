import dispositivos.*
import animales.*

class EstacionDeServicio {
	var dispositivoA
	var dispositivoB
	var dispositivoC
	
	method puedeAtender(animal) =
		dispositivoA.puedeAtender(animal) or
		dispositivoB.puedeAtender(animal) or
		dispositivoC.puedeAtender(animal)
		
	method atender(animal) {
		if(dispositivoA.puedeAtender(animal))
			dispositivoA.atender(animal)
		else if(dispositivoB.puedeAtender(animal))
			dispositivoB.atender(animal)
		else if(dispositivoC.puedeAtender(animal))					
			dispositivoC.atender(animal)
	}
}