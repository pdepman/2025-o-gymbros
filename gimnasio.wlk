import Maquinas.*
object gimnasio {
	var maquinas = [bicicletaFija, mancuernas]

	method limpiar() {
		maquinas.forEach({maquina => maquina.moverse()})
	}

}