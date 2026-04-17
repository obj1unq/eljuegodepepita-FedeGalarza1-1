import wollok.game.*

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

	var energia = 100

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

}
object silvestre {

	method position () = game.at(self.positionAtravezDe(), 0)

	method positionAtravezDe () { 
		if (pepita.position().x() < 3) {
			 return 3
		} else {
			return pepita.position().x()
		}
	}	

	method image() {
		return 'silvestre.png'		
	}
	} 	

