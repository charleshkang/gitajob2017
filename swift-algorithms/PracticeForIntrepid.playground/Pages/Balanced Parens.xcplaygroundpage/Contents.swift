//: [Previous](@previous)

import Foundation

let sets: [Character: Character] = [ // create a set that holds onto char key and char value
    "(":")",
    "[":"]",
    "{":"}"
]

func determineParenthesesBalance(str: String) -> Bool
{
    var stack = [Character]() // create a stack to hold onto the chars
    for char in str.characters { // iterate over chars in str
        if sets.keys.contains(char) { // if set's keys contains the current char
            stack.append(char)
        }
        
        if let opened = stack.last { // pulls the last value, if there is one, from the stack
            if let closer = sets[opened] { // checks if sets have a value mapped to the key opened
                if char == closer {
                    stack.removeLast()
                }
            }
        }
    }
    print(stack)
    return stack.count == 0 // return true if nothing is left in stack
}
determineParenthesesBalance(")(, ))(, ()), ()))((")
determineParenthesesBalance("(), (()), ()(), (()())")
determineParenthesesBalance("{}, [], (), ({[]})}")