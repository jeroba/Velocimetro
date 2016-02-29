//: Velocimetro de un auto
// Jesus Rodriguez Barrera

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var velocidadEnCadena : String
        let velocidadActualNum : Int = velocidad.rawValue
        
        switch velocidad {
            case .Apagado :
                velocidad = Velocidades.VelocidadBaja
                velocidadEnCadena = "Apagado"
            
            case .VelocidadBaja :
                velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
            case .VelocidadMedia :
                velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
            case .VelocidadAlta :
                velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
            
        }
        return (velocidadActualNum,velocidadEnCadena)
    }
}

var auto = Auto()

for numero in 1...20{
    var velocidadActual = auto.cambioDeVelocidad()
    print("\(numero). \(velocidadActual.actual), \(velocidadActual.velocidadEnCadena)")
}
