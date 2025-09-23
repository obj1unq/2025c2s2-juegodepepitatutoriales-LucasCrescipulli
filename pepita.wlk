import extras.*
import silvestre.*

object pepita {
	var energia = 9
	var property position = game.center()

// Acciones
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(distancia) {
		self.verificarVuelo()
		energia = energia - 9 * distancia
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

	method estaEnElNido() = self.position() == nido.position()

// Verificaciones
	method verificarVuelo(){
		if (energia < 9){
			self.error("Pepita no tiene suficiente energia para volar")
		}
	}
}

