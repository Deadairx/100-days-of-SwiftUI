import Cocoa

// Day 10: Structs
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let ram = Album(title: "Random Access Memories", artist: "Daft Punk", year: 2013)

print(red.title)
print(ram.artist)

red.printSummary()
ram.printSummary()

// structs with changing values
struct Employee {
    let name: String
    var vacationRemaining: Int
    
    // because we have no idea if Employee is set in a let or var, functions have to assume it's read only unless we define the function with the `mutating` keyword. Swift won't let us build this function without it
    mutating func takeVacation(days: Int) {
        if days <= vacationRemaining {
            vacationRemaining -= days
            print("I'm going on vacation")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

let archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
// archer.takeVacation(days: 7) ❌ I can't call this mutating function because `archer` is a constant

var pam = Employee(name: "Pam Poovey", vacationRemaining: 10000)
pam.takeVacation(days: 100) // ✅ it's a var, so mutating functions are allowed :)

// also, calling `Employee()` is syntax sugar for
var archer1 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

// Dynamic Property values
struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    // getter only
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

var lana = Employee2(name: "Lana Kane")
lana.vacationTaken += 4
print(lana.vacationRemaining) // can read like a property
// lana.vacationRemaining = 7 ❌ can't assign, because we haven't said how that would work here

struct Employee3 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    // get and set syntax
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
            // `newValue` is automatically provided
        }
    }
}

var cyril = Employee3(name: "Cyril Figgis")
cyril.vacationTaken += 4
cyril.vacationRemaining = 5
print(cyril.vacationAllocated)

// Reacting to changes
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        // runs before change
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        // runs after change
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue)") // access to old value
        }
    }
}

var app = App()
app.contacts.append("I can't")
app.contacts.append("Think of")
app.contacts.append("Names rn")

// custom init
struct Player {
    let name: String
    let number: Int
    
    // no func keyword (OOP business as usuall)
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Merlin")
print(player.number)
