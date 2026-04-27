import wollok.game.*
import pepita.*
import direcciones.*
import silvestre.*
import comidas.*


object nivel1 {
    method init() {
        game.clear()
        pepita.init()
        
        keyboard.up().onPressDo({ pepita.mover(arriba) })
        keyboard.down().onPressDo({ pepita.mover(abajo) })
        keyboard.right().onPressDo({ pepita.mover(derecha) })
        keyboard.left().onPressDo({ pepita.mover(izquierda) })
        
        keyboard.x().onPressDo({ self.init() })
        
        
        keyboard.c().onPressDo({ pepita.comerAca(manzana)})
        // game.onCollideDo(manzana, { alguien => alguien.comer(manzana) })
        game.onCollideDo(silvestre, { alguien => alguien.morir() })
        game.onTick(3000, "gravedad", { pepita.mover(abajo) })
        pepita.estaMuerta()

      
        
        game.addVisual(silvestre)
        game.addVisual(pepita)
        game.addVisual(manzana)
   
    }
}