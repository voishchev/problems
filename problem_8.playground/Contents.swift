//
// svo: 22.05.2022
//
// Problem 8. Функция принимает две строки и возвращает true, если одна является вращением другой с учетом регистра
//
import Foundation

func ifRotation(_ str1: String, _ str2: String) -> Bool {
    guard str1.count == str2.count else { return false}
    
    let tmpstr = str1 + str1
    return tmpstr.contains(str2)
}

ifRotation("swift", "ftswi")
ifRotation("ftswi", "swift")
ifRotation("ftswi", "wsift")
ifRotation("ftswi", "swt")
