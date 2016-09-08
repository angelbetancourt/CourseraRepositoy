//: Playground - noun: a place where people can play

import UIKit

for numero in 0...100{
    
    
    var residuoParaCinco = numero%5
    var residuoParaPar = numero%2
    if residuoParaCinco == 0{
        print("\(numero) bingo")
    }
    
    if residuoParaPar == 0{
        print("\(numero) par")
    }else{
        print("\(numero) impar")
    }
    
    if  numero >= 30 && numero <= 40 {
        print("\(numero) viva swift!!")
    }
}
