import personas.*
import objetos.*

object bolichito{
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera

    method objetoEnMostrador(objetoAPoner){
        objetoEnMostrador = objetoAPoner
    }

    method objetoEnVidriera (objetoAPoner){
        objetoEnVidriera = objetoAPoner
    }

    method esBrillante (){
        return objetoEnMostrador.material().brilla() and 
        objetoEnVidriera.material().brilla()
    }

    method esMonocromatatico(){
        return objetoEnMostrador.color() == 
        objetoEnVidriera.color()
    }

    method estaEquilibrado(){
        return objetoEnMostrador.peso() > 
        objetoEnVidriera.peso()
    }

    method tieneAlgoDeColor(unColor){
        return objetoEnMostrador.color() == unColor or
        objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
      return not self.estaEquilibrado() or 
      self.esMonocromatatico()
      //self == bolichito se usa para autollamar
    }

    method puedeOfrecerleAlgo(unaPersona){
        return 
        unaPersona.leGusta(objetoEnMostrador) ||
        unaPersona.leGusta(objetoEnVidriera)
    }

    method interCambiarObjetos(){
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }

    method intercambiarPlus(){
        self.intercambiar(objetoEnVidriera, objetoEnMostrador)
    }

    method intercambiar(unObjeto, otroObjeto){
        objetoEnMostrador = unObjeto
        objetoEnVidriera = otroObjeto
    }

}

