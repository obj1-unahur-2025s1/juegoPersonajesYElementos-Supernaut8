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
    var valorRecolectado = 0
    var ultimoElementoEncontrado = null
    method valorRecolectado() = valorRecolectado
    method encontrarElemento(unElemento) {
        valorRecolectado = valorRecolectado + unElemento.valorQueOtorga()
        unElemento.recibirTrabajo()        
        ultimoElementoEncontrado = unElemento
    }
    method ultimoElementoEncontrado() = ultimoElementoEncontrado
    method esFeliz() = valorRecolectado >= 50 
                      or 
                       ultimoElementoEncontrado.altura() >= 10 
}

object aurora {
    var estaViva = true
    method altura() = 1
    method recibirAtaque(arma) {
        if (arma.potenciaDeAtaque() >= 10) {
            estaViva = false
        }
    }
    method valorQueOtorga() = 15
    method recibirTrabajo() {}
    method estaViva() = estaViva
}

object tipa {
    var altura = 8
    method altura() = altura
    method recibirAtaque(arma) {}
    method valorQueOtorga() = altura * 2
    method recibirTrabajo() {
        altura = altura + 1
    }
}

object castillo {
    var nivelDeDefensa = 150
    method altura() = 20
    method nivelDeDefensa() = nivelDeDefensa
    method recibirAtaque(arma) {
        nivelDeDefensa = nivelDeDefensa - arma.potenciaDeAtaque()
    }
    method valorQueOtorga() = nivelDeDefensa * 0.2
    method recibirTrabajo() {
        nivelDeDefensa = 200.min(nivelDeDefensa + 20)
    }
}