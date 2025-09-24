object nido{
    var property position = game.at(8, 9)
    method image(){
        return "nido.png"
    }
}

object izquierda{
    method siguiente(position) = position.left(1)
}

object derecha{
    method siguiente(position) = position.right(1)
}

object arriba{
    method siguiente(position) = position.up(1)
}

object abajo{
    method siguiente(position) = position.down(1)
}