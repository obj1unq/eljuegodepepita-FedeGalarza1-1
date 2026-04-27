import wollok.game.*
object arriba {
    method mover(visual) {
        if (visual.position().y() < game.height() - 1)
            visual.position(visual.position().up(1))
    }
}

object abajo {
    method mover(visual) {
        if (visual.position().y() > 0)
            visual.position(visual.position().down(1))
    }
}

object derecha {
    method mover(visual) {
        if (visual.position().x() < game.width() - 1)
            visual.position(visual.position().right(1))
    }
}

object izquierda {
    method mover(visual) {
        if (visual.position().x() > 0)
            visual.position(visual.position().left(1))
    }
}