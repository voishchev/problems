//
// svo 22.05.2022
//
// Problem 5. How many times symbol sexists in a string

// 1st way
func letsCountASymbol(str: String, symbol inputSymbol: Character) -> Int {
    var counter: Int = 0
    for charOfString in str {
        if charOfString == inputSymbol {
            counter += 1
        }
    }
    return counter
}
letsCountASymbol(str: "qwewsderftrewsderfre", symbol: "f")
letsCountASymbol(str: "qwewsderftrewsderfre", symbol: "e")
letsCountASymbol(str: "qwewsderftrewsderfre", symbol: "m")

// 2nd way
func letsCountASymbol_2(str: String, symbol inputSymbol: Character) -> Int {
    // closure
    return str.reduce(0) {
        $1 == inputSymbol ? $0+1 : $0
    }
}
letsCountASymbol_2(str: "qwewsderftrewsderfre", symbol: "f")
letsCountASymbol_2(str: "qwewsderftrewsderfre", symbol: "e")
letsCountASymbol_2(str: "qwewsderftrewsderfre", symbol: "m")
