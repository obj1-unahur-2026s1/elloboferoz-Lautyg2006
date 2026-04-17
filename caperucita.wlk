import feroz.*

object caperucita {
    const peso = 60
    var ubicacion = "En el Bosque"
    var estaHablando = false

    method hacerUnaPregunta() {
        feroz.recibeUnaPregunta()
    }

    method dondeEsta() {
    return ubicacion
    }

    method ahoraEsta(ubicacionNueva) {
    ubicacion = ubicacionNueva
    }
    
     method empiezaAHablar() {
        estaHablando = true
    }

    method dejaDeHablar() {
        estaHablando = false
    }
}

object cestoConManzanas {
    var cantManzanas = 6
    var peso = cantManzanas * 0.2
    

    method cuantasHay() 
    {
        return cantManzanas
    }

    method manzanaCae() {
        cantManzanas = cantManzanas - 1
        peso = cantManzanas * 0.2
    }
  
  method cuantoPesa() {
    return peso
  
}
}

object abuelita {
    const peso = 50
    var ubicacion = "En la Casa de la Abuelita"

}

object cazador {
    const peso = 100
    var ubicacion = "En el Bosque"

    method matarLobo() {
        if (feroz.estaSaludable() == false) {

            feroz.muere()
            return "El cazador mata al lobo y libera a la abuelita y a caperucita"
        }
        return "El cazador no puede matar al lobo porque este pesa mucho y esta saludable"
    }

    method dondeEsta() {
    return ubicacion
    }

    method ahoraEsta(ubicacionNueva) {
    ubicacion = ubicacionNueva
    }
}