import Cocoa

// Day 7: Functions
func showWelcome() {
    print("Welcome")
    print("We're so glad you could join us")
    print("all your base are belong to us")
}
showWelcome()

// parameters
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
// must be named at call time and called in order. I appreciate the readablity of this
printTimesTables(number: 5, end: 5)

// Return types
func rollDice () -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted() // No need for `return` if body is ONE LINE
}

func multilineFunc(a: Int, b: Int) -> Int {
    let c = a + b
    // a * c ❌ but `return` is required with 2+ lines...thanks, I hate it
    return a * c
}

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
let c = pythagoras(a: 3, b: 4)
print(c)

// returning multiple values (tuples)
func getUser() -> (firstName: String, lastName: String) { // tuple fields can have names
    (firstName: "Michael", lastName: "Jackson")
}
let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUser2() -> (firstName: String, lastName: String) {
    ("Aubry", "Plaza") // you don't have to specify the field names
}
let (firstName, surName) = getUser2() // caller can destruct and name them as desired
print("Name: \(firstName) \(surName)")
let (primaryName, _) = getUser2() // can ignore value with `_`

// Classic tuple is also possible
func getUser3() -> (String, String) {
    ("Nick", "Offerman")
}
let user3 = getUser3()
print("Name: \(user.0) \(user.1)")

// Customize parameter labels
// the parameter label make the function uniquily identifiable
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }
// Swift knows which one to use because caller must name the parameter

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))
// ↑ so why is this not `hasPrefix(prefix: "")`?

// function parameters have 2 names each, one for calling and one for internal use
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let hello = "HELLO, WORLD"
print(isUppercase(hello))

//                    Public name
//                    |   Internal name
//                    ↓   ↓
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5)
