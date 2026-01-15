import Cocoa

// Functions (part 2)
// Default values
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
// removeAll has a default value to free memory unless specified
characters.removeAll(keepingCapacity: true)
print(characters.count)

// Error Handling
enum PasswordError: Error {
    case short, obvious
}

// must dictate if function throws errors ↓
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let badPassword = "12345"

do {
    let result = try checkPassword(badPassword)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
// ....
// (╯°□°)╯︵ ┻━┻ I hate this. I'm glad you at least have to dictate that the function throws an error, but we still have to do this crappy try/catch syntax to handle it.
// *deep breaths*
// at least you're required to call the function with the `try` keyword inside a do/catch
// there is a shorthand to call with `try!` that will panic if an error is thrown.

do {
    let result = try checkPassword(badPassword)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Plesae use a longer password.")
} catch PasswordError.obvious {
    print("That's the combination I use for my luggage!")
} catch {
    print("something errored, idk what it was though")
}

// Challenge: write a function that returns the square root of a given number between 1-10,000. Return an error if out of those bounds. Not allowed to use sqrt(), only care about whole numbers, throw an error otherwise
enum sqrtError: Error {
    case outOfBounds, noWholeRoot
}

func wholeSquareRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw sqrtError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    throw sqrtError.noWholeRoot
}

func trySquareRoot(of x: Int) {
    
    do {
        let y = try wholeSquareRoot(of: x)
        print("\(y) is the square root of \(x)")
    } catch sqrtError.outOfBounds {
        print("\(x) is out of bounds for this function")
    } catch sqrtError.noWholeRoot {
        print("could not find the square root of \(x)")
    } catch {
        print("idk, just give up probably")
    }
}

trySquareRoot(of: 25)
trySquareRoot(of: 26)
trySquareRoot(of: 2_500)
trySquareRoot(of: 10_001)
