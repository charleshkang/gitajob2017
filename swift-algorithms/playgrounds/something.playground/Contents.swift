//: Playground - noun: a place where people can play

import UIKit


func mult(a: Int,_ b: Int) -> Int{
    
    if a == 0 || b == 0{
        return 0
    }
    
    if b == 1 {
        return a
    }
    
    if b < 0 {
        return 0 - (a + mult(a, (0 - b) - 1))
    }
        
    else{
        return a + mult(a, b - 1)
    }
}

mult(2, 3)



func pow(x: Int, power:Int) -> Int {
    if power == 0 {
        return 1
    }
    return x * pow(x, power: power - 1)
}

//pow(2, 2);