import wollok.game.*
import pepita.*

object silvestre {

 method position () = game.at(self.positionAtravezDe(), 0)

 method positionAtravezDe () { 
  if (pepita.position().x() < 3) {
   return 3
  }else {
 return pepita.position().x()
  }
 } 

 method image() {
  return 'silvestre.png'
 }
} 