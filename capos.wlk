object rolando {
  var property capacidad = 2     //property para test
  const property artefactos = [] //property para test
  const property encuentros = []
  const castillo = castilloDePiedra

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

}

object castilloDePiedra {
    const artefactosGuardados = [] 

    method guardarTodos(artefactos) {
        artefactosGuardados.addAll(artefactos)
    }

    method artefactosGuardados() = artefactosGuardados
}

object espadaDelDestino {}
object libroDeHechizos {}
object collarDivino {}
object armaduraValyria {}

