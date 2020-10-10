import rodados.*
class Dependencia{
	var rodados=[]
	var property empleados
	method agregarAFlota(rodado){
		rodados.add(rodado)
	}
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}
	method pesoTotalFlota(){
		return rodados.sum({r=>r.peso()})
	}
	method estaBienEquipada(){
		return rodados.size()>=3 && rodados.all({r=>r.velocidadMaxima()>100})
	}
	method capacidadTotalEnColor(color){
		return rodados.filter({r=>r.color()==color}).sum({r=>r.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return rodados.max({r=>r.velocidadMaxima()}).color()
	}
	method capacidadFaltante(){
		return empleados- rodados.sum({r=>r.capacidad()})//VA A FALTAR EL MAX AL PRINCIPIO,100x100
	}
	method esGrande(){
		return self.empleados()>=40 && rodados.size()>=5
	}
}