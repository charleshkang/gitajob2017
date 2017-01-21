//: [Previous](@previous)

import Foundation

// Stacks
var intStack = [Int]()

// push
intStack.append(100)
// pop
intStack.popLast()
// peek
intStack.append(200)
intStack.last! // ! means return optional

// Queues
var intQueue = [Int]()

intQueue.append(100)
print(intQueue)

// Arrays
// Lists
// Sets
var goodGenres: Set<String> = ["electronic", "chillhop"]
var badGenres: Set<String> = ["country", "mainstream rap"]
var bestGenres: Set<String> = ["hip hop", "chill"]

goodGenres.insert("hiphop")
goodGenres.remove("electronic")
print(goodGenres)

let music = goodGenres.union(badGenres)
let goodMusic = goodGenres.intersect(bestGenres)
let badMusic = badGenres.subtract(bestGenres)
let areMyFavGenresElectronicAndChill = bestGenres.isSubsetOf(goodGenres)
let areGoodAndBadGenresDifferent = goodGenres.isDisjointWith(badGenres)


// Hashmaps
// Trees
// Graphs





// quick sort
var xs = [8,6,7,5,3,0,9]
// pivot = 8

var zs = [
