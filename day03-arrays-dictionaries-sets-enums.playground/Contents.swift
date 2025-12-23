import Cocoa

// Arrays
var crew = ["Wash", "Mal", "Jayne", "Kaylee"]
let primes = [1, 2, 3, 5, 7]
var temperatures = [76.8, 43.99, 69.420]
print (crew[0])
print(primes[4])
print(temperatures[2]) // nice
crew.append("Simon")

// 🤔 can you append to a let?
// primes.append(13) ❌ Ah-HA! you cannot 😁
//temperatures.append("420") ❌ must be same type

var scores = Array<Int>()
scores.append(7)
scores.append(13)
var albums = [String]()
albums.append("Darkside of the Moon")

print(crew.count)
crew.remove(at: 2)
print(crew.count)
crew.removeAll()
print(crew.count)

let goodMatrixMovies = ["The Matrix"]
print(goodMatrixMovies.contains("The Matrix Reloaded"))
let cities = ["London", "Tokyo", "Rome"]
print(cities.sorted())
let reversedCities = cities.reversed()
print(reversedCities)

// Dictionaries
let employee = [
    "name": "Me",
    "job": "Software Engineer",
    "location": "Dallas"
]

print(employee["name"])
// Optional? 🤔
print(employee["manager"])
// Default values
print(employee["name", default: "Unknown"])
print(employee["manager", default: "No Manager"])

//Empty Dictionary
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216

// Sets, like arrays, but no garunteed order no duplicates
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage"])

print(people) // This prints different order on each rebuild (makes sense)

var peeps = Set<String>()
peeps.insert("Cody")
peeps.insert("Issac")
peeps.insert("Amy")
peeps.insert("Evan")
print(peeps.contains("Joe")) // (O)1
print(peeps.sorted())
print(peeps.count)

// Enums 😁
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var weekday = Weekday.monday
weekday = Weekday.tuesday

// can one-line it
enum Month {
    case january, febuary, march, april, may, june
}

var month = Month.january
// Shorthand reassignments
month = .febuary
month = .march
