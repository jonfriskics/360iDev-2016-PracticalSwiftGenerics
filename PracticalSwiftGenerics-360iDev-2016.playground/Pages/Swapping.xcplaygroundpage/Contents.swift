//: [Previous](@previous)

import Foundation

func swapTwoThings<Thing>(firstThing: Thing, secondThing: Thing) -> (Thing, Thing) {
    let temporary = firstThing
    let firstThing = secondThing
    let secondThing = temporary
    return (firstThing, secondThing)
}

let swappedThings = swapTwoThings(firstThing: "Hello", secondThing: "Friend")
print(swappedThings)

//: [Next](@next)
