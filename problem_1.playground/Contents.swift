//  Задача №1. Проверка символов на уникальность

// Условие: Написать функцию, которая принимает строку как единственный параметр и возвращает true, если строка содержит только уникальные символы.
// ------------ I solution ---------------
func areOnlyUnic1(toCheck inputStr: String) -> Bool {
    return(Set(inputStr).count == inputStr.count)
}

// ------------ II solution --------------
func areOnlyUnic2(toCheck inputStr: String) -> Bool {
    var existingChars = Array<Character>()
    
    for symbol in inputStr {
        if existingChars.contains(symbol) {
            return false
        }
        existingChars.append(symbol)
    }
    return true
}

// --------------- tests -----------------
areOnlyUnic1(toCheck: "")
areOnlyUnic2(toCheck: "")

areOnlyUnic1(toCheck: "1234567@#$%^&*")
areOnlyUnic2(toCheck: "1234567@#$%^&*")

areOnlyUnic1(toCheck: "Bring me the Horison")
areOnlyUnic2(toCheck: "Bring me the Horison")
