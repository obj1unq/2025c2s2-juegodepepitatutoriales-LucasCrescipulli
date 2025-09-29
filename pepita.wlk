import extras.*
import silvestre.*
import game.*

object pepita {
// atributos
	var energia = 500
	const objectivo = nido
	var property position = game.center()
	var posicionAnterior = game.center()
	var estado = gameOn

// acciones
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(distancia) {
		self.verificarEnergia()
		energia = energia - 9 * distancia
	}

	method volarSiSeMovio(){
		if (position != posicionAnterior){
			self.volar(1)
		}
	}

	method mover(direccion){
		posicionAnterior = position
		position = direccion.siguiente(self.position())
		self.volarSiSeMovio()
	}

	method caer(){
		position = abajo.siguiente(self.position())
	}

	method perder(){
		estado = gameOver
		game.stop()
	}

	method ganar(){
		estado = win
		game.stop()
	}


// getters
	method energia() = energia

	method image(){
		return estado.image()
	}

	method silvestreLaAtrapo(){
		return self.position() == silvestre.position()
	}

	method noTieneEnergia(){ 
		return energia <= 0
	}

	method estaEnElNido(){
		return self.position() == objectivo.position()
	}

// verificaciones
	method verificarEnergia(){
		if (energia < 9){
			estado = gameOver
			game.say(self, "Pepita no tiene suficiente energia para volar")
			// game.schedule(2000, {game.stop()})
			game.stop()
		}
	}
}


object gameOver{
	method image(){
		return "pepita-gris.png"
	}
}

object gameOn{
	method image(){
		return "pepita.png"
	}
}

object win{
	method image(){
		return "pepita-grande.png"
	}
}