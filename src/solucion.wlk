object feroz {
	var peso = 10
	method estaSaludable(){
		return peso > 20 && peso < 150
	}
	method cambiarPeso(cantidad){
		peso += cantidad
		peso = peso.max(0)
	}
	method sufrirCrisis(){
		peso = 10
	}
	method comer(algo){
		peso += 0.1* algo.peso()
	}
	method correr(){
		self.cambiarPeso(-1)
	}
	method soplarCasa(material)
	{
		peso -= (material.resiste() + material.chanchitos() * chanchito.peso())
		peso = peso.max(0)
	}
}
object caperucita {
	var peso = 60
	var canasta = 6
	method peso() {
		return peso + canasta * manzana.peso()
	}
	method perderManzanas(cant){
		canasta = (canasta - cant).max(0)
	}
}

object manzana {
	var peso = 0.2
	method peso() {
		return peso
	}
}
object abuelita {
	var peso = 50
	method peso() {
		return peso
	}
}
object cazador {
	var peso = 120
	method peso() {
		return peso
	}
}

// feroz.correr()
// feroz.correr()
// feroz.comer(abuelita)
// caperucita.perderManzana(1)
// feroz.comer(caperucita)

// FINAL 1
// feroz.comer(cazador)  // Lobo Pesa 31.1
// feroz.estaSaludable()  // Da True
// FINAL 2
// feroz.sufrirCrisis()  // Lobo Pesa 10
// feroz.estaSaludable() // Da False

object paja {
	var resiste = 0
	var chanchitos = 1
	method resiste(){
		return resiste
	}
	method chanchitos(){
		return chanchitos
	}
}
object madera {
	var resiste = 5
	var chanchitos = 2
	method resiste(){
		return resiste
	}
	method chanchitos(){
		return chanchitos
	}
}
object ladrillo {
	var resiste = 2
	var chanchitos = 3
	var ladrillos = 2
	method resiste(){
		return resiste * ladrillos
	}
	method chanchitos(){
		return chanchitos
	}
}

object chanchito {
	var peso = 30
	method peso(){
		return peso
	}
}

// feroz.soplarCasa(paja)
// feroz.soplarCasa(madera)
// FINAL 1
// feroz.soplarCasa(ladrillo)
// feroz.estaSaludable() // Da False , pesa 0
// FINAL 2
// feroz.comer(chanchito) // Se los come antes de que escapen a la 3er casa.
// feroz.comer(chanchito)
// feroz.estaSaludable() // Da False, pesa 6