import armas.*

object luisa {
    var personajeActivo = null

    method personajeActivo() = personajeActivo
    method personajeActivo(unPersonaje) {
        personajeActivo = unPersonaje 
    }
    method apareceElemento(unElemento) {
        personajeActivo.encontrarElemento(unElemento)
    }
}

object floki {
    var arma = ballesta
  
    method arma() = arma
    method arma(unArma) {
        arma = unArma
    } 
    method encontrarElemento(unElemento) {
        if (arma.estaCargada()) {
            arma.registrarUso()
            unElemento.recibirAtaque(arma)
        }
    }
}

object mario {
    var valorRecolectado = null
    var ultimoElementoEncontrado = null
    method encontrarElemento(unElemento) {
        unElemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + unElemento.valorQueOtorga()
        ultimoElementoEncontrado = unElemento
    }
    method ultimoElementoEncontrado() = ultimoElementoEncontrado
    method esFeliz() = valorRecolectado >= 50 
                      or 
                       ultimoElementoEncontrado.altura() >= 10 
}

object aurora {
    var estaViva = true
  
    method recibirAtaque(arma) {
        if (arma.potenciaDeAtaque() >= 10) {
            estaViva = false
        }
    }
    method valorQueOtorga() = 15
    method recibirTrabajo() {}
    method estaViva() = estaViva
    method altura() = 1
}

object tipa {
    var altura = 8

    method altura() = altura
    method valorQueOtorga() = altura * 2
    method recibirTrabajo() {
        altura = altura + 1
    }
}

object castillo {
    var nivelDeDefensa = 150
  
    method nivelDeDefensa() = nivelDeDefensa
    method recibirAtaque(arma) {
        nivelDeDefensa = nivelDeDefensa - arma.potenciaDeAtaque()
    }
    method altura() = 20
}