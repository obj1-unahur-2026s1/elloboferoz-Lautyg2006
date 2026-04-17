import caperucita.*

object feroz {
        var peso = 10
        var preguntasHechas = 0
        var ubicacion = "En el Bosque"
        var estaHablando = false
        var estaVivo = true


    method recibeUnaPregunta() {
        preguntasHechas += 1
    }

    method elLoboVive() {
        return estaVivo
    }

    method muere() {
        estaVivo = false
    }

    method empiezaAHablar() {
        estaHablando = true
    }

    method dejaDeHablar() {
        estaHablando = false
    }

    method seMolestaPorPreguntas() {
        if (preguntasHechas == 3)
        {
            self.comer(caperucita)
            self.comer(cestoConManzanas)
        }
    }

      method estaSaludable() {
    if (self.elLoboVive()) {
        return peso > 10}
        return "el lobo esta muerto"
    }
    method subeDePeso(cantidad) {
    peso += cantidad
}

    method bajaDePeso(cantidad) {
    peso -= cantidad
}

    method sufreUnaCrisis() {
    self.bajaDePeso((peso - peso)+10)
}

    method comer(comida) {
    self.subeDePeso(
        comida.cuantoPesa() / 10
        )
}
    method correr(){
    self.bajaDePeso(1)
}

method cuantoPesa() {
    return peso
  
}

method dondeEsta() {
    return ubicacion
    }

method ahoraEsta(ubicacionNueva) {
    ubicacion = ubicacionNueva
    }

}