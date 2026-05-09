object neo {
    var energia = 100

    method vitalidad() = energia/10
    method esElElegido() = true
    method saltar() {
        energia = energia / 2
    }
}

object morfeo {
    var vitalidad = 8
    var estaDescansado = true

    method vitalidad() = vitalidad
    method esElElegido() = false
    
    method saltar() {
        estaDescansado = !estaDescansado
        vitalidad -= 1
    }
}

object trinity {
    method vitalidad() = 0
    method esElElegido() = false

    method saltar() {}
}

object nave {
    const pasajeros = []

    method cantidadDePasajeros() = pasajeros.size()
    method cualTieneMasVitalidad() = pasajeros.max({ p => p.vitalidad() })
    method laVitalidadEstaEquilibrada() = self.elPasajeroConMayorVitalidad() > self.elPasajeroConMayorVitalidad() * 2
    method elPasajeroConMayorVitalidad() = pasajeros.max({ p => p.vitalidad() })
    method elPasajeroConMenorVitalidad() = pasajeros.min({ p => p.vitalidad() })
    method elElegidoEstaEnLaNave() = pasajeros.any({ p => p.esElElegido() })

    method aniadirPasajero(unPasajero) = pasajeros.add(unPasajero)
    method expulsarPasajero(unPasajero) = pasajeros.remove(unPasajero)
    method chocar() {
        pasajeros.forEach({ p => p.saltar() })
        pasajeros.clear()
    }
    method acelerar() {
        pasajeros.filter({ p => not p.esElElegido() }).forEach({p => p.saltar()})
    }
 }