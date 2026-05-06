object rolando {
  var property    capacidad = 2     //property para test
  const property artefactos = []    //property para test
  const property encuentros = []
  const castillo = castilloDePiedra

  var property poderBase = 5

  method levantar(artefacto) {
    encuentros.add(artefacto)

    if (self.puedeLevantar()) {
      artefactos.add(artefacto)
    }
  }

  method puedeLevantar() = artefactos.size() < capacidad

  method vaciarEn(vivienda) {
    vivienda.guardarTodos(artefactos)
    artefactos.clear()
  }

  method artefactosEncima() = artefactos

  method artefectosQuePosee() = artefactos + castillo.artefactosGuardados()

  method esArtefacto(artefacto) = self.artefectosQuePosee().contains(artefacto)


  method poderDePelea() {
      poderBase + artefactos.sum({ a => a.poder(self) })
  }

  method luchar() {
      artefactos.forEach({ a => a.usar() })
      poderBase = poderBase + 1 //
  }

}

object castilloDePiedra {
    const artefactosGuardados = [] 

    method guardarTodos(artefactos) {
        artefactosGuardados.addAll(artefactos)
    }

    method artefactosGuardados() = artefactosGuardados
}

object espadaDelDestino {
  var property poder = 0
  var usos = 0;

  method poder(p) {
    if (usos < 1){
      return poder
    } else {
      return poder/2
    }
  }

  method usar() {
    usos +=1
  }
}

object collarDivino {
  var poder = 3

  method poder(p) {
    if (p.poderBase() > 6) {
      return poder+1
    } else {
      return poder
    }
  }

  method usar() {
    
  }

}

object armaduraValyria {
  var poder = 0

  method poder(p) {

  }

  method usar() {

  }
}

object libroDeHechizos {}