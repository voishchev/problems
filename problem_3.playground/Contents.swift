//
// svo: 22.05.2022
//
// Problem 3. areIdentical
//
// Условие. Написать функцию, которая принимает две строки и возвращает true, если эти строки содержат одни и те же символы в любом порядке с учетом регистра.

// 1st way: direct
func areIdentical_I(firstStr: String, secondStr: String) -> Bool {
    var tmpStr = secondStr
    for indexChar in firstStr {
        if let foundIndex = tmpStr.firstIndex(of: indexChar) {
            tmpStr.remove(at: foundIndex)
        } else {
            // when first str is longer than secondStr
            return(false)
        }
    }
    return(tmpStr.count == 0)
}
areIdentical_I(firstStr: "abc", secondStr: "cab")
areIdentical_I(firstStr: "abc", secondStr: "67")

// 2nd way
func areIdentical_II(firstStr: String, secondStr: String) -> Bool {
    // String is an array
    // It's nesessary to apply SORTED to uniquify the order in two comparing strings
    return(firstStr.sorted() == secondStr.sorted())
}
areIdentical_II(firstStr: "abc", secondStr: "cab")
areIdentical_II(firstStr: "abc", secondStr: "67")

