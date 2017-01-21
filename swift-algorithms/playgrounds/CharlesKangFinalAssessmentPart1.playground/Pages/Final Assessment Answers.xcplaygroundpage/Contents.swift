//: Playground - noun: a place where people can play

import UIKit


/*
1) Can't be a stack, queue, array, set, can't be array of arrays
You start from the head and go down as much left as possible, each node has a pointer to the next left node/node if there is no more left nodes to check
ANSWER: Singly Linked List

2) I originally thought I would use a hashmap because you could assign the flavors to a bucket, but that wouldn't be as good as an array. With an array of arrays you could have different flavorArr's and have each flavor that is surveyed. Then you could just do arr.count or something at the end
ANSWER: Array of Arrays

3) I would use a queue because each recursive calls because since they eventually get called again b/c of the base case, so the functions can just be put into the queue again in FIFO order
ANSWER: Queue

4) My thinking is that you could use an array. Store all the random #s you get, and just check if the given number is in the collectionArr

IT DOES NOT EXPLICITLY SAY THAT NUMBERS WILL/CAN REPEAT, ONLY THE NUMBERS ARE RANDOM SO ARRAY
ANSWER: Array
5) Will come back to this later

6) O((n^2)log(n)) IT'D BE NLOGN IF IT WAS ORDERED BUT IT'S RANDOM!!!

7) log(n)

8) Answer can't be a log n of anything, so that leaves us with...4 options now. But it can't be n! because we're not looking for the combination/permutation, so that leaves us with 3

Answer has to be O(n^2)

9) Looks like it's BFS... so I'll say D is the 4th printed value

10) Well since it's asking for average, so I put O(n). O(1) would be best case and O(n^2) would be worst case

11) So we know it's some kind of log runtime, especially with the nested for loops.

The WORST case runtime would be O(n^2log(n)) because you have 2 for loops each doing something based on i and j. Then you have the bar(arrayX) which runs whenever the index of ArrX is greater than ArrY.

12) So for example, if you were just starting and checked both arrays at index 0, if ArrX[i] and ArrY[i] are equal, you would just break, ending the loop which would reduce the overall runtime. But...

It would still be O(n^2) at best because you would still have the two for loops, and you're doing n things for each loop, so n*n...

13) Can only be n^2, n, or 1. since we're looking for the average runtime, I would have to say it is n^2 (NEVERMIND)
O(1) would be the best case aka not the answer
O(n^2) I think would be the worst case aka not the answer
So I'm prety confident the answer is O(n)

14) So... if the stack is empty, you just return to the beginning of the if statement, and since popLast() also returns nil if empty and is constant, the best run time would be O(1). The AVERAGE runtime would be O(n). The WORST runtime would be O(log(n))

15) So my reasoning for this question was like any other before, eliminate the ones it can't be. So you cross out O(logn), O(n^2logn), (n^2), O(nlogn)

But you eliminate n^2logn because that's the worst case, and logn is the best case. Which leaves O(nlogn) as the AVERAGE run time


16) [1,3,6,7], the function sorts from least to greatest

17) Since we're looking at mysteryFunc() I assume we can ignore helperFunc for this problem. Looks like it's a recursive problem and a tree? 

    And since it's a tree we know it has to be a log of some kind

    Best case would be: O(1)
    Worst case would be:

    OKAY, my reasoning is that since we're looking for average, you would traverse the array at least twice. You would get the first part which is n, and then the 2nd part would at least be (logn), so if you're doing both IT HAS TO BE NLOGN

18) They do NOT have the same runtimes. Since it's based on the count of the array, option B has the highest count. 
So [1, 10, 100, 1000, 10000] has the fastest runtime because it's already in sorted from least to greatest, and that's what mysteryFunc does. 

19) 

20) COULDN'T FINISH THE MATRIX QUESTION BECAUSE I HAD TO RESUBMIT MY ANSWERS 5 F-ING TIMES...
Is it possible to get another question to do or something I really really really don't want to fail and not graduate. I've been studying so much but google docs really fuked me over excuse my language 

*/
