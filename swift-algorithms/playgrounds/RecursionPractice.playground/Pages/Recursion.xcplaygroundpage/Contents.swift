//: Playground - noun: a place where people can play

import UIKit


func addUpIter(num:Int) -> Int {
    var ans = 0
    for i in (1...num) {
        ans += i
    }
    return ans
}

//func addUpRecursive(num: Int) -> Int {
//    if num == 0 { return 0 }
//    return num + addUpRecursive(num - 1)
//}

addUpIter(5)
//addUpRecursive(5)

func addNums(num:Int) -> Int {
    var answer = 0
    for i in (1...num) {
        answer += i
        // answer = answer + i 
        
    }
    return answer
}

addNums(5)

func addRecursives(num:Int) -> Int {
    if num == 0 {
        return 0
    }
    return num + addRecursives(num - 1)
    
    }

addRecursives(5)
