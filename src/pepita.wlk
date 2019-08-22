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
	method energia(){
		return energia
	}
	method haceLoQueQuieras(){
		if (self.estaCansada()){
			self.come(alpiste)
		}
		else if (self.estaFeliz()){
			self.vola(8)
		}
	}
	method entrenar(entrenador){
		entrenador.entrenar(self)
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
object mijo {
	var energia = 0
	method energiaQueOtorga(){
		return energia
	}
	method mojado(){
		energia = 15
	}
	method secarse(){
		energia = 20
	}
}
object canelones{
	var energia = 20
	method energiaQueOtorga(){
		return energia
	}
	method agregarQueso(){
		energia += 7
	}
	method agregarSalsa(){
		energia += 5
	}
	method sacarSalsa(){
		energia -= 5
	}
	method sacarQueso(){
		energia -= 7
	}
}
object roque{
		method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
	
}