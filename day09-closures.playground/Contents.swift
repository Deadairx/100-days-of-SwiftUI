import Cocoa

// Day 9: Closures
func greetUser() {
    print("Hi User")
}
greetUser()
// you can assign function to a variable
var greetCopy = greetUser
greetCopy()

// you can assign the closure directly
let sayHi = {
    print("Hi there!")
}

// slightly different syntax for closure with arguments
// why the `in` keyword? 🤔 --------------↓
let sayHello = { (name: String) -> String in
    "Hello \(name)!"
}

// closures are used in every SwiftUI app, likely be writing them 100 times

var greetCopy2: () -> Void = greetUser
// ah, I see where this is going, feels like I'm going back to React...but better!

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Man the guy that wrote this tutorial sure loves Taylor Swift"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
// 🤔 interesting, you don't need to name the parameter for closure calls... I guess that makes sense given the signature of `data` doesn't include one
print(user)

sayHello("Cody")
// You only name parameters when you're calling the functions directly, not on copies or closures

// flashback to `sorted()`
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// You can define a custom sort function to pass into `sorted()`
func captianFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}
let captainFirstSortedTeam = team.sorted(by: captianFirstSorted)
print(captainFirstSortedTeam)

// So we're able to create anonymous functions and pass them into variables
// We're also able to pass functions into other functions
// so naturally you can write the closure directly into the args of the function

let captainFirstTeam = team.sorted(by: {(name1, name2) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})
print(captainFirstTeam)
// Nice

// Shorthand for closures
// There is a lot of syntax shorthand around this too
// no need for `()` or parameter names
let captainFirstTeamAgain = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}
print(captainFirstTeamAgain)
// This is cool, the shorthand feels a little funky to me, but I can see how this can be helpful when doing UI work

// Times to consider using shorthand:
// 1. The closure’s code is long.
// 2. $0 and friends are used more than once each.
// 3. You get three or more parameters (e.g. $2, $3, etc).

// more examples of shorthand
let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)
let upperTeam = team.map { $0.uppercased() }
print(upperTeam)
// okay I like that

// Accepting functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}
print(rolls)

// multiple trailing closures
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("about to start first work")
    first()
    print("about to do second work")
    second()
    print("last work starting soon")
    third()
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the last work")
}
// Appearently this is not that uncommon


// Challenge: Take this array of numbers, filter out even numbers, sort in ascending order and print "x is a lucky number" for each number.
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbers
    .filter { !$0.isMultiple(of: 2)}
    .sorted()
    .map { print("\($0) is a lucky number")}
