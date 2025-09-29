import pepita.*
import game.*

object silvestre{
    method position(){
        return game.at(3.max(pepita.position().x()), 0)
    } 
    method image(){
        return "silvestre.png"
    }
    method colisionConPepita(){
        game.say(self, "A comer!")
        pepita.perder()
    }
}