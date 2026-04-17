import caperucita.*
import feroz.*


object narrador {
    
    method iniciarHistoria() {
        feroz.empiezaAHablar()
        caperucita.empiezaAHablar()
   return "Caperucita Roja se encuentra con el Lobo Feroz en el bosque. El lobo, que ha estado corriendo, decide hablar con Caperucita"
}

    method queHablaron() {
        if (feroz.estaHablando and caperucita.estaHablando) {
            return "El Lobo pregunta a Caperucita dónde va, y ella responde que va en camino a la casa de su abuelita. Entonces el lobo decide dirigirse hacia la casa de la abuelita antes que Caperucita"

            feroz.dejaDeHablar()
            caperucita.dejaDeHablar()
            feroz.correr()
            feroz.ahoraEsta("En la Casa de la Abuelita")
        }
        return "nadie habló aun"
    }
    
    method queHizoElLobo() {

        if (feroz.dondeEsta() == "En la Casa de la Abuelita" and caperucita.estaHablando == false) {

            feroz.comer(abuelita)

            return "El Lobo llega a la casa de la abuelita antes que Caperucita, se come a la abuelita y se disfraza con su ropa para esperar a Caperucita"
            }
            return "el lobo no ha hecho nada aun"
    }

    method queHizoCaperucita() {
        if (feroz.dondeEsta() == "En la Casa de la Abuelita") {
            cestoConManzanas.manzanaCae()
            caperucita.ahoraEsta("En la Casa de la Abuelita")

            feroz.empiezaAHablar()
            caperucita.empiezaAHablar()
            return "Caperucita se dirige a la casa de su abuelita, en el camino se le cae una manzana del cesto. Al llegar, entra a la casa y se encuentra al lobo disfrazado de su abuelita y comienza a hacerle preguntas"
        }
        return"Caperucita sigue caminando por el bosque"
    }

    method preguntaDeCaperucita1() {
        if (caperucita.estaHablando and caperucita.dondeEsta() == "En la Casa de la Abuelita") {
            return "Caperucita le pregunta al lobo por qué tiene orejas tan grandes, y el lobo responde que es para oírla mejor."
            caperucita.hacerUnaPregunta()
        }
    }

    method preguntaDeCaperucita2() {
        if (feroz.preguntasHechas == 1){
            return "Caperucita le pregunta al lobo por qué tiene ojos tan grandes, y el lobo responde que es para verla mejor."
            caperucita.hacerUnaPregunta()
        }
    }

    method preguntaDeCaperucita3() {
        if (feroz.preguntasHechas == 2){
            return "Caperucita le pregunta al lobo por qué tiene dientes tan grandes, y el lobo responde que es para comérsela mejor. Entonces, ya molesto, el lobo se la come a ella y al cesto con manzanas"
            caperucita.hacerUnaPregunta()
            feroz.seMolestaPorPreguntas()

            caperucita.dejaDeHablar()
            feroz.dejaDeHablar()
        }
    }

    method llegaElCazador() {
        if (feroz.estaSaludable() == true and cazador.dondeEsta() == "En el Bosque") {
            return "El cazador, al escuchar ruidos, llega a la casa de la abuelita y encuentra al lobo disfrazado."
       cazador.ahoraEsta("En la Casa de la Abuelita")
        }
        return "El cazador no esta en el bosque"
    }

    method finalUno() {
        if (feroz.estaSaludable() == true and cazador.dondeEsta() == "En la Casa de la Abuelita") {
            return "El cazador, al ver que el lobo se ha comido a Caperucita y su abuela, entre en estado de shock y el Lobo aprovecha para comerselo tambien"
     feroz.comer(cazador)
        }
     }

     method elLoboSufreUnaCrisis() {
        if (feroz.estaSaludable() == true and cazador.dondeEsta() == "En la Casa de la Abuelita") {

            feroz.sufreUnaCrisis()

            return "El lobo, al verse acorralado por el cazador, se asusta tanto que vómita a Caperucita, la cesta y su abuelita, volviendo a su peso inicial "
        }
        return "El lobo no sufre ninguna crisis aun"
     }

     method finalDos() {
        if (feroz.cuantoPesa() == 10 and cazador.dondeEsta() == "En la Casa de la Abuelita") {
             return "El cazador, al ver que el lobo ha vuelto a su peso inicial, decide usar su hacha para matarlo y así salvar a Caperucita y a su abuelita"
             cazador.matarLobo()
     }
}

}