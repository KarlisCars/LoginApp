//:Enumeration
import UIKit

//enum EnumerationName {
//    case enumeration
//}

//An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
//An enumeration which we can count.
var someDay = "Monday"

func setupAlarm() {
    if someDay == "monday" {
        print("set up alarm to 8AM")
    } else {
        print("No Alarm")
    }
}

//setupAlarm()



//Data type
enum Weekday {
    //case as constant
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var weekday = Weekday.monday
//var weekday:Weekday = .monday

func setupBedTime() {
    if weekday == .monday || weekday == .tuesday {
        print("set up alarm to 8 am")
    } else {
        print("No Alarm")
    }
}

setupBedTime()

weekday = .tuesday
setupBedTime()

weekday = .friday
setupBedTime()

//best practise is to use swicth case with enums
func setupSleepAlarm() {
    switch weekday {
    case .monday:
        print("set up alarm to 7 am")
    case .tuesday:
        print("set up alarm to 7:30 am")
    case .wednesday:
        print("set up alarm to 8 am")
    case .thursday:
       print("set up alarm to 8:30 am")
    case .friday:
        print("Yay! The last day of the week")
    default:
        print("No Alarm")
    }
}

weekday = .tuesday
setupSleepAlarm()

weekday = .saturday
setupSleepAlarm()

//enum must be unique values
enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = CalculationType.addition
print(calc.rawValue)



enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("set bed time at", 11, "PM")
print(wnd)


//:Struct

//checkers
let playerOne = "Player A"
let playerOneXPosition = 10
let playerOneYPostion = 5

let playerTwo = "Player B"
let playerTwoXPosition = 8
let playerTwoYPostion = 8

func getPosition(for player: String, with x: Int, end y: Int) {
    print("The position of \(player): X \(x), Y \(y)")
}

getPosition(for: playerOne, with: playerOneXPosition, end: playerOneYPostion)
getPosition(for: playerTwo, with: playerTwoXPosition, end: playerTwoYPostion)


// Struct
struct PositionOnMap {
    var player: String
    var x: Int
    var y: Int
    
    func getPositionOn() {
        print("The position of \(player): X \(x), Y \(y)")
    }
}

var playerOnePostion = PositionOnMap(player: "Player One", x: 10, y: 8)
var playerTwoPostion = PositionOnMap(player: "Player Two", x: 3, y: 7)


playerOnePostion.getPositionOn()
playerTwoPostion.getPositionOn()

/*
//:Struct vs Class
Struct is unique can't inherit another class
Classes can inherit from another class, like you inherit from UIViewController to create your own view controller subclass
structs are value types whereas classes are reference types.
Struct is like a custom data type which provides storage of data using properties with extended functionality using methods.
Struct automatically generates initializer
 https://blog.usejournal.com/swift-basics-struct-vs-class-31b44ade28ae

 */


class MacBook {
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func getSpecs() {
        print("\(name), \(year), \(color)")
    }
}

//macBookPro as new MacBook class example
let macBookPro = MacBook(name: "Mac Book Pro", year: 2019, color: "Grey")
macBookPro.getSpecs()

let macBookAir = macBookPro
macBookAir.name = "MacBook Air"

macBookAir.getSpecs()
macBookPro.getSpecs()


struct iPhone {
    var name: String
    var color: String
    var capacity: Int
    
    func getSpecs() {
        print("\(name), \(color), \(capacity)Gb")
    }
}

//iPhoneXR as new iPhone struct example
let iPhoneXR = iPhone(name: "iPhone XR", color: "Coral", capacity: 128)


var iPhoneXS = iPhoneXR //var
iPhoneXS.name = "iPhone XS"

iPhoneXR.getSpecs()
iPhoneXS.getSpecs()
//class git repository(cloud), working with same object reference type
//struct local repository(pc), working with new object value type
