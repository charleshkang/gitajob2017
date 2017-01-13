//: [Previous](@previous)

import Foundation
import UIKit

/* https://www.weheartswift.com/higher-order-functions-map-filter-reduce-and-more/ */

let array = [29,30,12,20,341,3,4,10,21,38]

let mappedArray = array.map {"$\($0)"}
let sortedArray = array.sorted(by: <)
let filteredArray = array.filter {$0 > 20}
let reducedArrayWithAdd = array.reduce(0, {$0 + $1})
let reducedArrayWithMult = array.reduce(1, {$0 * $1})
let reducedArray = array.reduce(0, +)

print(mappedArray)
print(sortedArray)
print(filteredArray)
print(reducedArray)
print(reducedArrayWithAdd)
print(reducedArrayWithMult)

// Given an array of of dictionaries containing keys for “name” and “age” write a map function that returns an array of users created from it
var usersDicts = [["name":"David", "age":32], ["name":"Clara", "age":33], ["name":"Pepe", "age":24]]
var arrayOfUsers = usersDicts.map({(name:$0["name"] as! String, age:$0["age"] as! Int)})
print(arrayOfUsers)

// Given an array of numbers write a filter method that only selects odd integers
var arrayOfNums = [1,2,3,4,5,6,7,8,9]
var oddArray = arrayOfNums.filter { $0 % 2 != 0 }
print(oddArray)

// Given an array of strings write a filter function that selects only strings that can be converted to Ints
var arrayOfStr = ["hi", "one", "two", "0", "10", "21"]
var filteredArr = arrayOfStr.filter {(Int($0) != nil)}
print(filteredArr)

// Given an array of UIViews write a filter function that selects only those views that are a subclass of UILabel
var view1 = UIView()
var view2 = UITextView()
var view3 = UIImageView()
var view4 = UILabel()
var view5 = UIScrollView()

var views = [view1,view2,view3,view4,view5]
var filteredViews = views.filter {$0.isKind(of: UILabel.self)}
print(filteredViews)

// Write a reduce function that takes an array of strings and returns a single string consisting of the given strings separated by newlines
var strings = ["hi", "hello", "goodbye"]
var stringsReduced = strings.reduce("", {"\($0)\($1)\n"})
print(stringsReduced)

// i'm not really sure what the purpose of $1 is here? i sort of do, but not really. because my understanding is that $0 covers all the elements in the strings array, so therefore $0 would cover all the values? asked in the slack, hope i get an answer
// ANSWER: the lambda definition in reduce is `(Result, Self.Iterator.Element) throws -> Result`, so $1 is the array element, $0 is the accumulator (initially `""`, then whatever string was returned from the previous call)
// my understanding of shorthand syntax was wrong i guess. $0 in this case is the accumulator and $1 are the array elements in this example

// Write a reduce function that finds the largest element in an array of Ints
let intArr = [1,2,3,4,12,301,6,10]
let largestElement = intArr.reduce(Int.min, {$0>$1 ? $0: $1})
// how can we use ?? instead? is that possible here?
print(largestElement)
