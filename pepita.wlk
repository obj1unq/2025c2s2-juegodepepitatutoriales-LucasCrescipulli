
object pepita {
	var energia = 500
	var property position = game.center()
	var property image = "pepita.png"

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 9 - kms 
	}
	
	method energia() {
		return energia
	}

	// ESTO NO FUNCIONA LA PUTA MADRE
	/* method image(){
		return if (energia <= 0){
			image = "pepita-gris.png"
		}
		else {
			image = "pepita.png"
		}
	}
	*/

	method noTieneEnergia(){
		return energia <= 0
	}

}

