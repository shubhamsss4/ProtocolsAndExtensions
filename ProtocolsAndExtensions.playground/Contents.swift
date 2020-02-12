import UIKit

var str = "Hello, playground"

/// Protocols

// Unlike classes protocols can inherit from multiple protocols at the same time

protocol Bat {
    func runsScored() -> Int
}

protocol Bowl {
    func wicketsTaken() -> Int
}

protocol Field {
    func runsSaved() -> Int
}

protocol Player : Bat,Bowl,Field { }


// Extensions
// You cannot have stored properties in extensions; only computed properties

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

var number = 4
print(number.isEven)

// Protocol extensions are used to provide to default implementations of the methods

protocol Person {
    var name: String { get set }
    func identify()
}

extension Person {
    func identify() {
        print("Hi I am \(name)")
    }
}

struct User : Person {
    var name: String
}

let shubham = User(name: "Shubham")
shubham.identify()


