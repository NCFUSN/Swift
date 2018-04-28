//: Generics

import UIKit
let a = [2.5, 2.6, 2.7]
let b = ["One", "Two", "Three"]

func genericFunc<anything>(value: anything) {
    
    print(value)
}

genericFunc(value: 12)

// the normal way

func genericFunction<T>(value: T) {
    
    print(value)
}

func printElement<T>(array: [T]) {
    
    array.forEach { (element) in
        print(element)
    }
}

printElement(array: a)

//struct Family {
//
//    var members = [String]()
//
//    mutating func addMemeber(_ memeber: String) {
//
//        self.members.append(memeber)
//    }
//}
//
//var myFamily = Family()
//myFamily.addMemeber("Grace")
//myFamily.addMemeber("Iustus")

struct Family<T> {
    
    var members = [T]()
    
    mutating func addMemeber(_ memeber: T) {
        
        self.members.append(memeber)
    }
}

var myFamily = Family<String>()
myFamily.addMemeber("Grace")
myFamily.addMemeber("Iustus")

var myFamily2 = Family<Int>()
myFamily2.addMemeber(1)
myFamily2.addMemeber(2)

extension Family {
    
    var firstElement: T? {
        
        if members.isEmpty {
            return nil
        }
        return members.first
    }
}

myFamily.firstElement

//: Type constraint. limiting to any specific type
class TheClass {}
class Other: TheClass {}

func addTheClassOnly<T: TheClass>(array: [T]) {}
addTheClassOnly(array: [TheClass()]) // OK
addTheClassOnly(array: [Other()]) // also OK. Authomatically upcasted/
//addTheClassOnly(array: [Int]) // NO. expects for TheClass type







