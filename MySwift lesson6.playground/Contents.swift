//:Enumeration
import UIKit

var someDay = "Tuesday"

func setupAlarm(){
    if someDay == "tuesday"{
        print("set up a;arm at 8AM")
    }else{
        print("No Alarm")
    }
    
}

setupAlarm()

enum Weekday{
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var weekday = Weekday.monday

func setupBedTime(){
    if weekday == .monday || weekday == .tuesday{
        print("set up alarm at 8AM")
    }else{
        print("No Alarm")
    }
    
}

setupBedTime()
weekday = .tuesday
setupBedTime()

func setupSleepAlarm(){
    switch weekday {
    case .monday:
        print("setup alarm at 9AM")
        case .tuesday:
        print("setup alarm at 9AM")
    case .wednesday:
        print("setup alarm at 9AM")
    case .thursday:
        print("setup alarm at 9AM")
    case .friday:
        print("setup alarm at 9AM")
    default:
        print("No alarm")
    }
    
}
weekday = .tuesday
setupSleepAlarm()

enum CalculationType : String {
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

var wnd = Weekend.sunday("Setup bed time at", 11, "PM")
print(wnd)

//: Struct

// checkers

let playerOne = "A"
let playerOneXPosition = 10
let playerOneYPosition = 10

let playerTwo = "B"
let playerTwoXPosition = 11
let playerTwoYPosition = 1

func getPosition (for player:String, with x:Int, end y:Int){
    print("The position od \(player): X \(x), Y\(y)")
}
getPosition(for: playerOne, with: playerOneXPosition, end: playerOneYPosition)
getPosition(for: playerTwo, with: playerTwoXPosition, end: playerTwoYPosition)


//Struct
struct PositionOnMap{
    var player: String
    var x: Int
    var y: Int
    
    func getPositionOn (){
    print("The position of \(player): X \(x), Y\(y)")
    }
}

var playerOnePosition = PositionOnMap(player: "AA", x: 12, y: 11)
var playerTwoPosition   =   PositionOnMap(player: "BB", x: 5, y: 5)

playerOnePosition.getPositionOn()
playerTwoPosition.getPositionOn()

class MacBook{
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String){
        self.name = name
        self.year = year
        self.color = color
    }
    func getSpec(){
        print("\(name), \(year), \(color)")
    }
}

let macBookPro = MacBook(name: "MacBook pro", year: 2018, color: "Grey")
macBookPro.getSpec()

let macBookAir = macBookPro
macBookAir.name = "Macbook Air"


macBookAir.getSpec()
macBookPro.getSpec()

struct iPhone {
    var name: String
    var capacity: Int
    var color: String
    
    func getSpec(){
        print("\(name), \(capacity), \(color)")
    }
}
let iPhoneXR = iPhone(name: "iPhoneXR", capacity: 128, color: "Black")

var iPhoneXS = iPhoneXR
iPhoneXS.name = "iPhoneXS"

iPhoneXS.getSpec()
iPhoneXR.getSpec()


