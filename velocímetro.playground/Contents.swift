//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int{
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
    
    
}

class Auto{
    
    var velocidad : Velocidades
    
    init() {
        
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        let velocidadDescripcion : String
        let velocidad = self.velocidad.rawValue
        
        switch self.velocidad {
            
        case .Apagado:
            
            self.velocidad = .VelocidadBaja
            velocidadDescripcion = "Apagado"
            
        case .VelocidadBaja:
            
            velocidadDescripcion = "Velocidad baja"
            self.velocidad = .VelocidadMedia
            
        case .VelocidadMedia:
            
            velocidadDescripcion = "Velocidad media"
            self.velocidad = .VelocidadAlta
            
        case .VelocidadAlta:
            
            velocidadDescripcion = "Velocidad alta"
            self.velocidad = .VelocidadMedia
            
        }
        
        return (velocidad, velocidadDescripcion)
        
    }
}

let auto = Auto()

for i in 1...20{
    
    print(auto.cambioDeVelocidad())
}




