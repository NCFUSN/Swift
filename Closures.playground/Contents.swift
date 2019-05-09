import UIKit
import Foundation

/*
 
 A closure is a function without a name and the func keyword
 (for now)
 
 */

// Intro


// Part 1

// simple function

func addTwoNumbers(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

// exact thing using closures

var addClosures: (Int, Int) -> Int = { (number1: Int, number2: Int) in // in separates parameters block from return block
    return number1 + number2
}

// or

var addClosures2 = { (number1: Int, number2: Int) in // in separates parameters block from return block
    return number1 + number2
}

// or

var addClosures3: (Int, Int) -> Int = { $0 + $1 }


// calling closure

addClosures(10, 10)
addClosures3(10,15)


let callStringWithClosure: () -> String = { () in
    print("Hello!")
    return "Hello, I'm a closure"
}

// or

let callStringWithClosure2: () -> String = { () in
    "Hello, I'm a closure"
}

// or

let callStringWithClosure3: () -> String = {
    "Hello, I'm a closure"
}

// or simpler

let callStringWithClosure4 = {
    "Hello, I'm a closure"
}


callStringWithClosure2()
callStringWithClosure3()
callStringWithClosure4()

