//: [Previous](@previous)

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class ViewController: UIViewController, Stackable {
    internal var amIOnTheStack: Bool {
        get { return self.amIOnTheStack }
        set(newValue) {
            self.amIOnTheStack = newValue
        }
    }
}

protocol Stackable: class {
    var amIOnTheStack: Bool { get set }
}

struct Stack<T: Stackable> {
    
    var stack: [T] = []
    var count = 0
    
    mutating func addToStack(item: T) {
        item.amIOnTheStack = true
        stack.append(item)
        count = count + 1
    }
    
    mutating func removeFromStack() -> T? {
        guard count > 0 else { return nil }
        count = count - 1
        return stack.removeLast()
    }
}

var vc1 = ViewController()
var vc2 = ViewController()

var s = Stack<ViewController>()
s.addToStack(item: vc1)
s.addToStack(item: vc2)
s.count
var i = s.removeFromStack()
s.count

i

//: [Next](@next)
