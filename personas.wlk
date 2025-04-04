import objetos.*// Para usar todo lo que se cree en objetos.

object rosa {
    method leGusta(unaCosa){
        return unaCosa.peso() <= 2000
    }
}

object estefania {
    method leGusta(unaCosa) {
        return unaCosa.color().esFuerte() 
    }
}

object luisa {
    method leGusta(unaCosa) {
      return unaCosa.material().brilla()
    }
}

object juan {
    method leGusta(unaCosa){
        return not unaCosa.color().esFuerte() or 
        unaCosa.peso().between(1200, 1800)
    // || el O se puede hacer con pip 
    // Tambien se puede negar con !. 
    /*return ! unaCosa.color().esFuerte() ||
    unaCosa.perso().between(1200, 1800)*/
    }
}