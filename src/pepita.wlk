object pepita {
	var energia = 340

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method estaFeliz(){
		return energia.between(500,1000)
	}
	method cuantoQuiereVolar(){
		var aumentar = 0
		if(energia.between(300,400)){
			aumentar += 10
		}
		if (energia%20 == 0){
			aumentar += 15
		}
		return (energia/5)+aumentar
	}
	method salirAComer(comida){
		self.vola(comida.distanciaPepita())
		self.come(comida)
		self.vola(comida.distanciaPepita())
	}
}

object alpiste {
	var gramos = 10
	var distanciaPepita = 5
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}
	method distanciaPepita(){
		return distanciaPepita
	}		
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}
