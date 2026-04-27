import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	var property  position = game.at(4, 7) 

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
}

 method desaparecer() {
	game.removeVisual(self)
}


}

object alpiste {

	method energiaQueOtorga() {
		return 20
	} 

}

