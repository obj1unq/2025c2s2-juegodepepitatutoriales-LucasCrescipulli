import pepita.*
import game.*

object nido{
    var property position = game.at(8, 9)
    method image(){
        return "nido.png"
    }
    method colisionConPepita(){
        game.say(self, "A descansar!")
        pepita.ganar()
    }
}

object izquierda{
    method siguiente(position){
        return if (position.x() - 1 >= 0){
           position.left(1)
        }
        else {
            position
        }
    }
}

object derecha{
    method siguiente(position){
        return if (position.x() + 1 <= 9){
           position.right(1)
        }
        else {
            position
        }
    }
}

object arriba{
    method siguiente(position){
        return if (position.y() + 1 <= game.height() - 1){
            position.up(1)
        }
        else {
            position
        }
    }
}

object abajo{
    method siguiente(position){
        return if (position.y() - 1 >= 0){
            position.down(1)
        }
        else {
            position
        }
    }
}