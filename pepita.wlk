
object pepita {
	var energia = 500
	var property position = game.center()
	var image = "pepita.png"

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 9 - kms 
	}
	
	method energia() {
		return energia
	}

	method image(){
		return if (energia <= 0) "pepita-gris.png" else "pepita.png"
	}
	
	method noTieneEnergia(){
		return energia <= 0
	}

}

