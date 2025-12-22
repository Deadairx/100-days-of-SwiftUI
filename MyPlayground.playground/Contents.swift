import Cocoa

// Variables and constants
var name = "Steve"
print(name)
name = "Bob"
print(name)

let character = "Swift"
print(character)
// character = "Rust" ← ❌ not allowed, imutable
print(character)

let multiLine = """
this is multiple lines (aka, string literal
it must start and end with triple double-quotes
on their own line
"""

let score = 10
// human reable numbers supported
let bigNumber = 100_000_000
let underscoresIgnored = 1__00___0_0___000_____0

// basic arithmetic operators
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squareedScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
// shorthand operators
counter += 5
counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 10))
number.isMultiple(of: 7)

// let number = 0.1 + 0.2 ← ❌ no shadow casting support 😔
let floatingNumber = 0.1 + 0.2
print(floatingNumber)


