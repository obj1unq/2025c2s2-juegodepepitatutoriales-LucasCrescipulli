import extras.*
import silvestre.*

object pepita {
	var energia = 9
	const objectivo = nido
	var property position = game.center()

// Acciones
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(distancia) {
		self.verificarVuelo()
		energia = energia - 9 * distancia
	}

	method mover(direccion){
		position = direccion.siguiente(self.position())
	}

// Getters
	method image(){
		return if (self.noTieneEnergia() || self.silvestreLaAtrapo()) {"pepita-gris.png"} 
		else if (self.estaEnElNido()) {"pepita-grande.png"}
		else {"pepita.png"}
	}
	method energia() = energia

	method silvestreLaAtrapo() = self.position() == silvestre.position()

	method noTieneEnergia() = energia <= 0

	method estaEnElNido() = self.position() == objectivo.position()

// Verificaciones
	method verificarVuelo(){
		if (energia < 9){
			self.error("Pepita no tiene suficiente energia para volar")
		}
	}

}

