//
// svo: 22.05.2022
//
// Problem 9. Проверить, является ли входная строка панграммой, без учета регистра (панграмма - строка? содержащая в себе все буквы алфавита)
import Foundation

func isPangram(_ str: String) -> Bool {
    let set = Set(str.lowercased())
    
    let symbols = set.filter {
        $0 >= "a" && $0 <= "z"
    }
    return symbols.count == 26
}

isPangram("idtyxc")
isPangram("qweRtyUiOpLkJHgfDsazxCvBnM")
