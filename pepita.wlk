import wollok.game.*
import silvestre.*
import comidas.*


object pepita {
 var property position = game.at(0, 3) 
 // var property image = 'pepita.png' 1
  // method image() { 2 
 //  return 'pepita.png'2 
 // }2
 // 
 method image() {  
  if (self.position() == silvestre.position()) {
   return 'pepita-gris.png'
   } else { 
    return 'pepita.png'
   }
  } 

 method text() {
  if (self.estaMuerta()) return "Oh estoy muerta 💀"
  if (manzana.fueComida()) return "\n\n\n\n" + "GANEEEE"
  return "\n\n\n\n" + energia

}



 var energia = 100
 var viva = true   

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
  energia = energia - kms
  if(energia <= 0) {
  self.morir()
  }
 }
 
 method energia() {
  return energia
 }

 method init() {
  position = game.at(0, 3)
  energia = 100
  viva = true
 }
 method mover (direccion) {
  if (viva) {
  self.volar(1)
  direccion.mover(self)
  } 
 }
 method morir() {
  energia = 0
  viva = false 
 }

 method estaMuerta() {
  return !viva
 }

}


	

