object ballesta {
    var flechas = 10

    method registrarUso() {
        flechas = flechas - 1
    }
    method flechas() = flechas
    method estaCargada() = flechas > 0
    method potenciaDeAtaque() = 4

}

object jabalina {
    var estaCargada = true

    method registrarUso() {
        estaCargada = false    
    }
    method estaCargada() = estaCargada
    method potenciaDeAtaque() = 30
}
