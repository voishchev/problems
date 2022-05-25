//
// svoi: 22.05.2022
//
// Problem 6. Удалить повторяющиеся символы в строке
//

func removeRepeatedSymbols(_ str: String) -> String {
    var reduced = Array<Character>()
    for symbol in str {
        if !reduced.contains(symbol) {
            reduced.append(symbol)
        }
    }
    return String(reduced)
}

removeRepeatedSymbols("Hello")
removeRepeatedSymbols("qweeeeeerEetrryttuyyiuu")
