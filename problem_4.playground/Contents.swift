//
// svo: 22.05.2022
//
// Problem 4.
//
// Условие: Проверить,, содержится ли одна строка полностью в другой, игнорируя регистр

// This library is related with Objective-C
// and allows to use parts of strings as a parameter for String.contains()
import Foundation
// Existing String.container does not ignore case by default
// for changing this behavior it's simplier to write an extension
extension String {
    func customContains(_ string: String) -> Bool {
        return self.lowercased().contains(string.lowercased())
    }
}

let exampleStr = "qwertyuiop"
exampleStr.customContains("ErTy")
