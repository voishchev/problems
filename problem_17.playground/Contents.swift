//
// svo: 23.05.2022
//
// Problem 17. Написать функцию, которая принимает два положительных числа и возводит одно в степень второго
//
import Foundation

func power(base: Double, exp: Int) -> Double? {
    guard base > 0 && exp > 0  else {
        print("Numbers must be > 0")
        return nil
    }
    var result = base
    
    for _ in 2...exp {
        result = result * base
    }
    return result
}

power(base: 2.5, exp: 3)


// but there is a standard func
// which works with Double
// (requires import Foundation):
pow(16, 0.5)
