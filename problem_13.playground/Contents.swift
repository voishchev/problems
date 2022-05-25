//
// svo: 22.05.2022
//
// Problem 13. Написать функцию? которая принимает строку и возвращает строку, содержащую символ и количество его повторений в ряду (Наприме: aaabbcccc -> a3b2c4 , ff/// -> f2/3)
//
import Foundation

// 1st way
func getData(_ str: String) -> String {
    guard str.count != 0 else { return "" }
    var result = [Character: Int]()
    var resultString = ""
    
    for letter in str {
        if result.keys.contains(letter) {
            result.updateValue(result[letter]! + 1, forKey: letter)
        } else {
            result[letter] = 1
        }
    }
    
    for element in result.keys {
        resultString = "\(resultString)\(element)\(result[element]!)"
    }
    
    return resultString
}

getData("aaabbcccc")
getData("ff///")

// 2nd way
func howManyTimes(_ str: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
    
    for letter in str {
        if letter == currentLetter {
            letterCounter += 1
        } else {
            // optional binding
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            currentLetter = letter
            letterCounter = 1
        }
    }
    // for the last pair
    // optional binding
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    return returnValue
}
howManyTimes("aaabbcccc")
howManyTimes("ff///")
