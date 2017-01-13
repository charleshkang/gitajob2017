//: [Previous](@previous)

import Foundation

/*
 1. a, because i is 3 and in case of 3, print "number was 3"
 2. a, float
 3. f, shiny
 4. d, because you can't go from nsstring to swift string? had to test this out in playgrounds
 5. c, because you're iterating over the names and adding the string in front, and the names get put into all uppercase letters
 6. a, 32-bit
 7. a, code won't compile
 8. e, 3 total strings
 9. c, brought to you by joe cause arrays are 0-indexed
 10. f, code will compile
 11. g, 1,2,3 will be printed
 12. e, code won't compile because you can't loop through a range starting with the upper bound
 13. g, Firefly 
 14. d, TARDIS
 15. c
 16. a
 17. d
 18. d, it's very windy
 19. d, since the others don't start with the letter S
 20. g, code won't compile
 21. a, it's not optional because you unwrap it using if let in the first place
 22. b, not too sure about this one...
 23. f
 24. d
 25. e, code will not compile because the dog class is marked final and you cannot override a class marked as final
 26. b, will not compile because you can't use the + operator on string types, would need to typecast
 27. f, infinite loop
 28. e, i wasn't aware that += would do the append as well
 29. d, reasoning is that int.min would be -255, but the U specifies that it's a larger number
 30. b, same as the other question but not a float
 */

/*
 evaluation:
 1. b, the code won't compile. swift requires all switch cases be exhaustive, and there is no default case
 2. b, it's a double. when given a floating point number, type inference uses the double data type
 3. correct
 4. correct
 5. e, the code won't compile because it modifies name inside the loop, you could use the var keyword to make changes inside the loop
 6. c, it depends on the device. 32-bit on devices iphone 5 and earlier, 64-bit on devices 5s and later
 7. correct
 8. d, code won't compile, as the array was created with let instead of var. pay close attention to the property declaration!
 9. b, code won't compile, because subscripting an array of strings will return a string and not string?. so it's a compile error to try and unwrap a non-optional
 10. b, code won't compile. do keyword is invalid and repeat should be used instead
 11. correct
 12. d, code will compile but crash at runtime. can't generate ranges where the initial value is greater than the end value
 13. d, code won't compile because the class has no initializers. would have been fine if it was a struct
 14. correct
 15. correct
 16. correct
 17. e, the willSet property observer is triggered only when the initial value is changed, but not when the struct is created using free initializers
 18. correct
 19. correct
 20. d, i wasn't aware that in swift you can have any number of leading zeroes and any numbers of underscores inside a number to make reading easier. so although it's a weird way to do it, it's 100% valid
 21. correct
 22. c, when in a catch block with no pattern, swift automatically matches any error and binds it to a local constant called error
 23. b, so, the replacingOccurences() method returns a new string instead of modifying in place. so, this code the return value is discarded, keeping the original motto unchanged
 24. correct
 25. correct
 26. d, when used with strings, the + operator appends one string to another. so "5" and "5" merge to make "55"
 27. a, each time the loop goes around, the i is doubled then multiplied by itself. 
 28. e, did it in playgrounds but the += operator, when applied to an array, appends one array to another in place. 
 29. b, 255. uint means unsigned integer, which is a whole number that cannot be less than zero
 30. d, code won't comple because the sqrt() function can be called using 2 different types of parameter, neither of which are integers. so number is considered to be an integer which can't be used by sqrt unless typecasted to a double
 
 */
// 12/30 correct 😱 it's okay though. you learned a lot and will be able to apply this knowledge in the future