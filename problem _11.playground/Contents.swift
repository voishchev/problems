//
// svo: 22.05.2022
//
// Problem 10. Функция принимает две строки и возвращает true, если они одинаковы по длине, но отличаются по содержанию не более чем на 3 буквы
//

func myComparison(_ str1: String, _ str2: String) -> Bool {
    if str1.count != str2.count {
        return false
    } else {
        let firstArray = Array<Character>(str1)
        let secondArray = Array<Character>(str2)
        var discrepancyCounter = 0
        
        for singleElement in firstArray.enumerated() {
            if singleElement.1 != secondArray[singleElement.0] {
                discrepancyCounter += 1
            }
            if discrepancyCounter == 4 {
                return false
            }
        }
        return true
    }
}

myComparison("qwertyuiop", "QwertyugoP")
myComparison("qw%rtyuiop", "QwertyugoP")
