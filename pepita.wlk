import extras.*
import silvestre.*

object pepita {
// atributos
	var energia = 500
	const objectivo = nido
	var property position = game.center()

// acciones
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(distancia) {
		self.verificarVuelo()
		energia = energia - 9 * distancia
	}

	method mover(direccion){
		self.volar(1)
		// verificar el borde ???
		// verificar si hay obstáculo ???
		position = direccion.siguiente(self.position())
	}

// getters
	method energia() = energia

	method image(){
		return if (self.noTieneEnergia() || self.silvestreLaAtrapo()) {
			"pepita-gris.png"
		} 
		else if (self.estaEnElNido()) {
			"pepita-grande.png"
		}
		else {
			"pepita.png"
		}
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
	method verificarVuelo(){
		if (energia < 9){
			self.error("Pepita no tiene suficiente energia para volar")
		}
		else if (self.silvestreLaAtrapo()){
			self.error("Pepita fue atrapada por Silvestre")
		}
	}
}

