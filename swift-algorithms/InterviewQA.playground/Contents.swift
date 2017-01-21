//: Playground - noun: a place where people can play

import UIKit


for _ in 0...4 {
    print("hello")
}

// structs in swift are value types, classes are reference types 

let animals = ["fish", "cat", "chicken", "dog"]
let sortedAnimals = animals.sort()

var optional1: String?
var optional2: String? = nil
optional1 == optional2


public class ThermometerClass {
    private(set) var temperature: Double = 0.0
    public func registerTemperature(temperature: Double) {
        self.temperature = temperature
    }
}

let thermometerClass = ThermometerClass()
thermometerClass.registerTemperature(56.0)

public struct ThermometerStruct {
    private(set) var temperature: Double = 0.0
    public mutating func registerTemperature(temperature: Double) {
        self.temperature = temperature
    }
}

var thermometerStruct = ThermometerStruct()
thermometerStruct.registerTemperature(56.0)

var thing = "cars"

let closure = { [thing] in
    print("I love \(thing)")
}

thing = "airplanes"

closure()