//
// svo: 24.05.2022
//
// Problem 24. Написать функцию, которая принимает Int и возвращает его квадратный корень, округленный до ближайшего целого, без использования sqrt().
//
import Foundation


func mySqrt(_ input: Int) -> Int {
    return Int(round(pow(Double("\(input).0")!, 0.5)))
}


mySqrt(8)
