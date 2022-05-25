//
// svo: 23.05.2022
//
// Problem 22. Написать функцию, которая принимает строку и возвращает true, если строка состоит только из чисел
//

func onlyNums(_ str: String) -> Bool {
    for char in str {
        if !(char > "0" && char < "9") {
            return false
        }
    }
    return true
}

onlyNums("qwerrgv")
onlyNums("qwe34dt67889")
onlyNums("123456")
