//
// svo: 24.05.2022
//
// Problem 28. Написать расширение для массива строк, возвращающее отсортированный массив с элементами по убыванию длины.
//

extension Collection where Iterator.Element == String {
    func sortByLength() -> [String] {
        var output = Array<String>()
        var resultDictionary = [Int: String]()
        for strValue in self {
            resultDictionary.updateValue(strValue, forKey: strValue.count)
        }
        for i in resultDictionary.keys.sorted(by: >) {
            output.append(resultDictionary[i]!)
        }
        return output
    }
}
["", "1234", "er", " ", "jfyfbgighiiotn", "pubh087g"].sortByLength()
[""].sortByLength()
