import caperucita.*

object feroz {
        var peso = 10
        var preguntasHechas = 0
        var ubicacion = "En el Bosque"

    method dondeEsta() {
        return ubicacion
    }

    method ahoraEsta(ubicacionNueva) {
        ubicacion = ubicacionNueva
    }

    method recibeUnaPregunta() {
        preguntasHechas += 1
    }



    method seMolestaPorPreguntas() {
        if (preguntasHechas == 3)
        {
            self.comer(caperucita)
            self.comer(cestoConManzanas)
        }
    }

method cuantoPesa() {
    return peso
  
}
  method estaSaludable() {
  return peso > 10 and peso < 150
}

 method subeDePeso(cantidad) {
    peso += cantidad
}

  method bajaDePeso(cantidad) {
    peso -= cantidad
}

  method sufreUnaCrisis() {
    peso = 10
}

method comer(comida) {
    self.subeDePeso(
        comida.cuantoPesa() / 10
        )
}
method correr(){
    self.bajaDePeso(1)
}

}