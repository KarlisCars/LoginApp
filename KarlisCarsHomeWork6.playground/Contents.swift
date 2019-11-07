import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
enum CalculationType: String {
    case addition = "adding"
    case subtraction = "subtracting"
    case multiplication = "multiplying"
    case division = "dividing"
}


/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */



func calculateResult(firstNumber numberOne: Int, secondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int{

var result = numberOne
      
      switch calculationType {
      case .addition: result += numberTwo
      case .subtraction: result -= numberTwo
        
      case .multiplication:
        result *= numberTwo
      case .division:
        result /= numberTwo
    }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")

   return result
}
/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/
let oneNumber = 3
let twoNumber = 9
calculateResult(firstNumber: oneNumber, secondNumber: twoNumber, withCalculationType: .addition)
calculateResult(firstNumber: oneNumber, secondNumber: twoNumber, withCalculationType: .subtraction)
calculateResult(firstNumber: oneNumber, secondNumber: twoNumber, withCalculationType: .multiplication)
calculateResult(firstNumber: oneNumber, secondNumber: twoNumber, withCalculationType: .division)
/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */

struct Car{
    var name: String
    var productYear: Int
    var horsePower: Int
    
    func getSpecs(){
        print("\(name) is \(productYear) year with \(horsePower) horepower")
    }
}
/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */
var audiQ7 = Car(name: "audiQ7", productYear: 2015, horsePower: 250)
var audiTT = Car(name: "audiTT", productYear: 2018, horsePower: 290)

audiQ7.getSpecs()
audiTT.getSpecs()

