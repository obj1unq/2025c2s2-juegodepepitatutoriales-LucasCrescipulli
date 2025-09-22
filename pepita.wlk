
object pepita {
	var energia = 100
	var property position = game.at(0, 0)
	var property image = "pepita.png"

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method subir(){
		position = position.up(1)
	}
}

