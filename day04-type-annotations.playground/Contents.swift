import Cocoa

enum Month {
    case january, febuary, march, april, may, june
}

// Type Annotations
var alpha: String
//alpha = 0 ❌ can't change the type
let bestMonth: Month
bestMonth = .june
//bestMonth = .april ❌ 2nd assignment not allowed on immutable

// challenge: create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.
var strings = ["a", "b", "c", "d", "b", "a"]
print(strings.count)
print(Set(strings).count)
