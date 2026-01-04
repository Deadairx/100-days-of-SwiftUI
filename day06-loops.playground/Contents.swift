import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

// ranges are ... that's gonna take some getting used to
for i in 1...12 {
    print("The \(i) times table")
    for j in 1...12 {
        print("\(j) x \(i) = \(j*i)")
    }
    print()
}

// inclusive
for i in 1...5 {
    print("Counting from 1 thru 5: \(i)")
}

// exclusive
for i in 1..<5 {
    print("Counting from 1 UP to 5: \(i)")
}

var lyrics = ""
// ignore variable
for _ in 1...16 {
    lyrics += "na "
}
lyrics += "BATMAN!!!"
print(lyrics)

// while loop
var countdown = 10
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("CRIT SUCCESS!")


// CHALLENGE: Fizz Buzz (classic)
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
