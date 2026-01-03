import Cocoa

// Day 5: Condition checks
// If
let testScore = 85
if testScore > 80 { // LOOK MOM, NO PARENTHESES!
    print("You pass!")
} else {
    print("YOU FAIL!")
}

let myName = "Cody"
let friendName = "Isaac"
if myName < friendName { // 🤔 interesting, you can use < & > on Strings!
    print("\(myName) comes before \(friendName)")
}
if myName > friendName {
    print("\(friendName) comes before \(myName)")
}

var numbers = [1,2,3]
numbers.append(4)
if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

var username = ""
//if username.count == 0 { // 🟡 appearntly this is ineffincent, swift actually counts all the characters in a string when you call .count 💀 (supposedly this has something to do with Swift's ability to support all languages and emoji out of the box?) this should be a function imo .count()
if username.isEmpty {
    username = "Anonymous"
}
print("Welcome, \(username)")
// else if and the usual suspects && and || are supported but I'm gonna skip those examples

// Switch statements! They do exist!
enum Weather {
    case sun, rain, wind, snow, unknown
}
let forecast = Weather.sun

// must be exhaustive
switch forecast {
case .sun:
    print("It's nice out")
case .rain:
    print("get the umbrella.")
case .wind:
    print("where's the jacket?")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken")
}

// default case
let place = "Metropolis"
switch place {
case "Gotham":
    print("Batman!")
case "Mega-City One":
    print("I never watched Judge Dredd...")
case "Wakanada":
    print("*bows* \"...we don't do that here.\"")
default:
    print("I don't even know where I am!!")
}

// explicit fallthrough keyword
let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 french hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// ternary operations
// supposedly popular to use in SwiftUI
let personAge = 18
let canVote = personAge >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)
