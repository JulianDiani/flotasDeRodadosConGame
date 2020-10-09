class Corsa{
	var property color=""
	method capacidad(){return 4}
	method velocidadMaxima(){return 150}
	method peso(){return 1300}
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
class AutosEspeciales{
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color=""
}