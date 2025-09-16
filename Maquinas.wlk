object pressBanca {
    var property position = game.at(
    0.randomUpTo(game.width()).truncate(0),
    0.randomUpTo(game.height()).truncate(0)
  )

    method esDePierna() = false

    method gains() = 10
}