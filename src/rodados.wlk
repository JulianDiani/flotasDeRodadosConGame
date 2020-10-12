import wollok.game.*

object azul { method image() { return "autitoAzul.png" } }
object rojo { method image() { return "autitoRojo2.png" } }
object negro { method image() {/*Sin imagen aún */} }
object blanco { method image() {/*Sin imagen aún */} }
object verde { method image() { return "autitoVerde.png" } }
object beige { method image() {/*Sin imagen aún */} }

class Corsa{
	var property color=""
	var property position=game.origin()
	var posiciones=[]
	const property filas = [self.position().x()]
	var property image = "autitoRojo2.png"
	
	method capacidad(){return 4}
	method velocidadMaxima(){return 150}
	method peso(){return 1300}
	method pasoPor(posicion){
		return posiciones.contains(posicion)
	}
	method pasoPorFila(num){
		return filas.contains(num)
		
	}
	method position(){return position}
	method nuevaPosicion(posicion){
		position=posicion
		filas.add(posicion.x())
		posiciones.add(self.position())
	}
	method moverHacia(direccion){
		if(direccion=="norte"){self.position(self.position().up(1))filas.add(filas.last()+1)}
		else if(direccion=="sur"){self.position(self.position().down(1))filas.add(filas.last()-1)}
		else if(direccion=="oeste"){self.position(self.position().right(1))}
		else{self.position(self.position().left(1))}
		posiciones.add(self.position())
	}
	method recorrioFilas(listaNums){
		return listaNums.asSet().difference(filas.asSet()).isEmpty()
	}
	
	
}

class Kwid{
	var property tieneTanqueAdicional
	method capacidad(){
		return if(self.tieneTanqueAdicional()){3}else{4}
	}
	method velocidadMaxima(){
		return if(self.tieneTanqueAdicional()){120}else{110}
	}
	method peso(){
		return if(self.tieneTanqueAdicional()){1350}else{1200}
	}
	method color(){return "azul"}
	
}
object traffic{
	var property interior
	var property motor
	method capacidad(){return interior.capacidad()}
	method velocidadMaxima(){return motor.velocidad()}
	method peso(){return 4000+ interior.peso()+motor.peso()}
	method color(){return "blanco"}
	 
}

object interiorComodo{
	method capacidad(){return 5}
	method peso(){return 700}
}
object interiorPopular{
	method capacidad(){return 12}
	method peso(){return 1000}
}
object motorPulenta{
	method peso(){return 800}
	method velocidad(){return 130}
}
object motorBataton{
	method peso(){return 500}
	method velocidad(){return 80}
}
class AutoEspecial{
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color=""
}