class Pedido{
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadDePasajeros
	var property coloresIncompatibles=[]
	method agregarColorIncompatible(color){
		coloresIncompatibles.add(color)
	}
	method eliminarColorIncompatible(color){
		coloresIncompatibles.remove(color)
	}
	method velocidadRequerida(){
		return self.distanciaARecorrer()/self.tiempoMaximo()
	}
	method puedeSatisfacerPedido(auto){
		return auto.velocidadMaxima()-10>self.velocidadRequerida()&& auto.capacidad()>=self.cantidadDePasajeros()&& not coloresIncompatibles.contains(auto.color())
	}
	method acelerar(){tiempoMaximo-=1}
	method relajar(){tiempoMaximo+=1}
	
}