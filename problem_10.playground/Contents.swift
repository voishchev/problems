//
// svo: 22.05.2022
//
// Problem 10. Написать функцию? которая принимает строку и возвращает tuple, содержащий число гласных и согласных в данной строке
import Foundation

func VandC(_ str: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeouiy"
    let consonants = "qwrtpsdfghjklzxcvbnm"
    var counterV = 0
    var counterC = 0
    
    for char in str.lowercased() {
        if vowels.contains(char) {
            counterV += 1
        } else  if consonants.contains(char) {
            counterC += 1
        }
    }
    return (vowels: counterV, consonants: counterC)
}

VandC("qwertyu&")
