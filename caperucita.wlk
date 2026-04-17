import feroz.*

object caperucita {
    const peso = 60
    var ubicacion = "En el Bosque"

    method hacerUnaPregunta() {
        feroz.recibeUnaPregunta()
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
  
}

object abuelita {
    const peso = 50
    var ubicacion = "En la Casa de la Abuelita"

}

object cazador {
    const peso = 100
    var ubicacion = "En el Bosque"
}