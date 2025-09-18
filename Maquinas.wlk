object mancuernas {
  var position = game.at(10,0)
  const nombre = 'mancuernas'
  method image() = nombre + '.png'

  method position() = position

  method position(nuevaPosition){
    position = nuevaPosition
  }

  method nombre() = nombre

  method moverse() {
    position = position.up(1)
    position = position.right(1)
  }

  method gains() = 100

  method esDePierna() = false

  method esOptima() = true
}

object bicicletaFija {
  var property position = game.at(30,0)
  const nombre = 'bicicletaFija'
  method image() = nombre + '.png'

  method nombre() = nombre

  method moverse() {
    position = position.up(1)
    position = position.right(1)
  }

  method gains() = 60

  method esDePierna() = true

  method esOptima() = self.gains() > 50
}