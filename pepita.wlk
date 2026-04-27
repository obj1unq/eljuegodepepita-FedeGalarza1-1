import wollok.game.*
import silvestre.*
import comidas.*


object pepita {
	var property position = game.at(0, 3) 
	// var property image = 'pepita.png' 1
  // method image() { 2 
	// 	return 'pepita.png'2 
	// }2
	// 
	 method image() {  
	 	if (self.position() == silvestre.position()) {
	 		return 'pepita-gris.png'
	 	} else { 
	 		 return 'pepita.png'
	 	}
   } 

	 method text() = "\n\n\n\n" + self.energia()

	var energia = 100

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method comerAca (comida) {
		if (self.position() == comida.position()) {
		self.comer(comida)
		comida.desaparecer()
	}

	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method init() {
    position = game.at(0, 3)
    energia = 100
}
	method mover (direccion) {
		direccion.mover(self)
	} 

	method morir() {
		
	}
}


	

