import extras.*
import pepita.*
import game.*
import silvestre.*
object mapa{

    const dibujo = 
    [   [_, _, _, m, _, _, _, n, _, _],
        [_, _, _, m, _, _, _, _, _, _],
        [_, _, _, m, _, _, _, _, _, _],
        [_, _, _, m, _, _, _, _, _, _],
        [_, _, _, m, m, m, m, _, _, _],
        [_, _, _, _, _, _, _, _, _, _],
        [_, _, _, _, _, _, _, _, _, _],
        [_, _, _, _, _, _, _, _, _, _],
        [p, _, _, _, _, _, _, _, _, _],
        [_, _, _, s, _, _, _, _, _, _]    ].reverse() // es necesario el reverse por cómo se ejecuta el código

    method construir(){

        game.height(dibujo.size())  // o sea, la cantidad de elementos de la lista de listas (filas del dibujo)
        game.width(dibujo.anyOne().size()) // o sea la cantidad de elementos de cada lista (columnas del dibujo)
        
        // itero por el ancho y luego por el alto
        (0.. game.width() - 1).forEach({x => 
            (0.. game.height() - 1).forEach({y =>
                dibujo.get(y).get(x).dibujar(game.at(x,y))})
                }
            )
        
                // revisar esto en el código de Leo

        }
}

object m{
    method dibujar(position){
        // new Muro(position=position)
    }
}

object n{
    method dibujar(position){
        nido.position()
        game.addVisual(nido)
    }
}

object p{
    method dibujar(position){
        pepita.position(position)
        game.addVisual(pepita)
    }
}

object _{
    method dibujar(){}
}

object s{
    method dibujar(){
        // tengo que saber dónde ponerlo??? silvestre.position(...)
        game.addVisual(silvestre)
    }
}