object diana {
  var sufijo = ""
  var property position = game.at(0,0)
  method image() = "dianas" + sufijo + ".png"

  method sufijo(nuevoSufijo){
    sufijo = nuevoSufijo
  }
}

object facu {
  var sufijo = ""
  var maquinas = []
  var property position = game.at(140, 4)
  method image() = "facus" + sufijo + ".png"

  method sufijo(nuevoSufijo){
    sufijo = nuevoSufijo
  }

  method guardarMaquina(maquina){
    maquina.add(maquina)
    game.removeVisual(maquina)
  }

  
}