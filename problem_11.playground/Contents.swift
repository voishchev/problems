//
// svo: 22.05.2022
//
// Problem 11. Написать функцию, которая принимает строку, состоящую из слов с похожими префиксами,
// разделенными пробелами. (Например: swift swig swivbhd swing -> swi)
//
import Foundation

func getPrefix(_ str: String) -> String {
    // auto parcing
    let words = str.components(separatedBy: " ")
    // if string is empty, even 1st element is nil
    // guard checks nil
    guard let first = words.first else { return ""}
    
    var curPrefix = ""
    var greatestPrefix = ""
    
    for symbol in first {
        curPrefix.append(symbol)
        for aWord in words {
            if !aWord.hasPrefix(curPrefix) {
                return greatestPrefix
            }
            greatestPrefix = curPrefix
        }
    }
    return greatestPrefix
}
getPrefix("swift swigbohd swn swif")
