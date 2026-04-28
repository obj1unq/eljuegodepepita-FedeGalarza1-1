import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	var property  position = game.at(4, 7) 
	var fueComida = false 

	method image() {
		return 'manzana.png'		
	}

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

	method serComidaPor(alguien) {
	alguien.comer(self)
	self.desaparecer()
	fueComida = true
	}

 method desaparecer() {
	game.removeVisual(self)
	fueComida = true
 }

 method fueComida () {
	return fueComida
 }

 method init() { 
	fueComida = false
 }
}

object alpiste {

	method energiaQueOtorga() {
		return 20
	} 

}

