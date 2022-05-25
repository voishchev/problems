//
// svo: 22.05.2022
//
// Problem 2. isStringAPalindrom (case should be ignored)

func isStringAPalindrom(toCheck str: String) -> Bool {
    let lowercased = str.lowercased()
    return(lowercased == String(lowercased.reversed()))
}

isStringAPalindrom(toCheck: "qWeRewq")
