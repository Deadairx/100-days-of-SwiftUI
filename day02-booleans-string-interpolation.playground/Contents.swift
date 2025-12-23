import Cocoa

// Booleans were named after George Boole, an English mathematician who spent a great deal of time researching and writing about logic. 🤔

var isAuthed = false
isAuthed = !isAuthed

var gameOver = false
gameOver.toggle() // method for flipping bools

// String joining
let greeting = "hello, " + "world"

var name = "Bob"
let age = 57
var message = "hello, my name is \(name) and I am \(age) years old"
// when using + concat, you have explicitly cast to string
message = "I'm " + name + " and I am " + String(age) + " years old"
