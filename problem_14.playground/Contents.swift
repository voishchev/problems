//
// svo: 23.05.2022
//
// Problem 15. Написать функцию, которая принимает строку и возвращает такую строку, каждое слово в которой записано в обратном порядке, без использования циклов
//
import Foundation

func revert(_ str: String) -> String {
    let parts = str.components(separatedBy: " ")
    let reversed = parts.map {
        // String() !!!
        String($0.reversed())
    }
    return reversed.joined(separator: " ")
}

revert("qwe rty uio plk")
