//
// svo: 23.05.2022
//
// Problem 23. Написать функцию, которая принимает строку, содержащую числа и буквы, и возвращает сумму содержащихся в ней чисел (Int)
//
import Foundation

func calculate(_ str: String) -> Int {
    var sum = 0
    var numberInMemory = 0
    
    for char in str {
        let strSymbol = String(char)
        if  Int(strSymbol) != nil {
            numberInMemory = numberInMemory*10 + Int(strSymbol)!
        } else {
            sum = sum + numberInMemory
            numberInMemory = 0
        }
    }
    sum = sum + numberInMemory
    return sum
}

calculate("a2s3s4")
calculate("a23s3s4")
