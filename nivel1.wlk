import wollok.game.*
import pepita.*
import direcciones.*
import silvestre.*
import comidas.*


object nivel1 {
 method init() {
  game.clear()
  manzana.init()
  pepita.init()
  
  keyboard.up().onPressDo({ pepita.mover(arriba) })
  keyboard.down().onPressDo({ pepita.mover(abajo) })
  keyboard.right().onPressDo({ pepita.mover(derecha) })
  keyboard.left().onPressDo({ pepita.mover(izquierda) })
  
  keyboard.x().onPressDo({ self.init() })
  
  
  keyboard.c().onPressDo({ pepita.comerAca(manzana)})
  // game.onCollideDo(manzana, { alguien => alguien.comer(manzana) })
  game.onCollideDo(silvestre, { alguien => alguien.morir() })
  game.onTick(3000, "gravedad", {if (pepita.energia() <= 99 ) pepita.mover(abajo) })
  game.onTick(4000, "Restart", { if (pepita.estaMuerta()) self.init()})
  game.onTick(2000, "Ganaste", { if (manzana.fueComida()) self.init()})
  

 
  
  game.addVisual(silvestre)
  game.addVisual(pepita)
  game.addVisual(manzana)
  
 }
}