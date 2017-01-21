//: Playground - noun: a place where people can play

import UIKit

/* Variables */

var name = "Charles Kang"

print("hello " + name)

var int:Int = 5
int = int + 5
int = int + 1000
int = int / 2


var double = 3.4
var anotherDouble: Double = 5.4

var float: Float = 21.41


var a: Double = 5.76
var b: Int = 8

print("The product of \(a) and \(b) is \(a * Double(b)) ")

/* Arrays */

var arr = [1,2,3,4, "Charles"]
print(arr[4])
print(arr.count)
arr.append(40)
arr.removeAtIndex(4)
print(arr)

var nextArr = [3,2,4]
nextArr.removeAtIndex(1)
print(nextArr)
nextArr.append(nextArr[0] * nextArr[1])

/* Dictionaries */

var dict = ["car": "something used to drive",
    "smoothie": "something you drink"]
print(dict["car"]!)
print(dict.count)
dict["pen"] = "something used to write"
print(dict)

dict.removeValueForKey("smoothie")
print(dict)

var menu = ["pizza": 110, "wine": 20, "salad":5]
var totalCost = menu["pizza"]! + menu["wine"]! + menu["salad"]!
print("the total food cost is \(totalCost)")

/* If/Else Statements */

var age = 20

if age >= 18 {
    print("you're in!")
} else {
    print("sorry!")
}

var firstName = "Charles"

if firstName == "Charles" {
    print("Hey \(firstName)")
} else {
    print("Sorry, you need to be Charles")
}

if firstName == "Charles" && age >= 18 {
    print("welcome")
} else {
    print("leave")
}


var username = "charles"
var password = "123"
if username == "charles" && password == "123" {
    print("you're in!")
} else if username != "charles" && password != "123" {
    print("both fields are wrong")
} else if username == "charles" {
    print("your password is wrong")
} else {
    print("your username is wrong")
}

