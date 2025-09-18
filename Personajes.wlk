object facu {
  var position = game.at(0,0)
  var mochila = []
  method image() = 'facus.png'

  method position() = position

  method position(nuevaPosition){
    position = nuevaPosition
  }

  method moverALaDerecha() {
    position = position.right(1)
  }

  method llevarseASuCasa(maquina){
    game.say(self, maquina.nombre())
    game.removeVisual(maquina)
    self.pedirPrestada(maquina)
  }

  method pedirPrestada(maquina){
    mochila.add(maquina)
  }

  method cantidadDeMaquinas() = mochila.size()
  
  method tieneAlgunaDePierna() = mochila.any({maquina => maquina.esDePierna()})

  method laMochilaEsOptima() = mochila.all({maquina => maquina.esOptima()})

  method gainsDeMochila() = mochila.map({maquina => maquina.gains()})

  method lasDePierna() = mochila.filter({maquina => maquina.esDePierna()})

  method gainsTotales() = mochila.sum({mochila => mochila.gains()})

  method gainsTotales2() = self.gainsDeMochila().sum()
}

object diana {
  var property position = game.at(140, 0)
  var sufijo = '_idlee'
  method image() = 'diana' + sufijo + '.png'

  method cambiarImagen(){
    if(sufijo == '_squat'){
      sufijo = '_idlee'
    }else {
      sufijo = '_squat'
    }
  }

  method cansarse() {
    sufijo = '_exhausted' //cambia imagen
    game.removeTickEvent("hacer sentadillas") //cancelar el evento
  }


}