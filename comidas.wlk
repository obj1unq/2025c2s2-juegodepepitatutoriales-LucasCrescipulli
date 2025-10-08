import game.*
import pepita.*
import extras.*

class Manzana {
	const base= 5
	var madurez = 1
	const position // si yo lo inicializo con algo

	method position(){
		return position
	}

	method image(){
		return "manzana.png"
	}
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
		//madurez += 1
	}

	method colisionConPepita(){
		pepita.comer(self)
	}

}

class Alpiste {

	const property position
	const peso

	method image(){
		return "alpiste.png"
	}

	method peso(){
		return peso
	}

	method energiaQueOtorga() {
		return 20
	} 

}

object comidas{

	const enElTablero = #{}

	method comenzar(){
		game.onTick(3000, "COMIDAS", {self.nuevaComida()})
	}

	method nuevaComida(){
		if (enElTablero.size() < self.maximo()){
			const comida = new Manzana(position = randomizer.emptyPosition())
			game.addVisual(comida)
			enElTablero.add(comida)
		}
	}

	method maximo(){
		return 3
	}

	method remover(comida){
		if (enElTablero.contains(comida)){
			enElTablero.remove(comida)
			game.removeVisual(comida)
		}
	}
}