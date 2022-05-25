//
// svo: 24.05.2022
//
// Problem 26. Написать расширение Array<Int>.repetition(digit: "x"). На входе Array<Int>, на выходе Int, показывающий, сколько раз данная цифра встречается во всех числах массива
//

extension Collection where Iterator.Element == Int {
    func repetition(digit: Character) -> Int {
        var counter = 0
        
        for instance in self {
            for char in String(instance) {
                if char == digit {
                    counter += 1
                }
            }
        }
        return counter
    }
}

let x = [23, 45, 42, 31, 54]
x.repetition(digit: "5")
x.repetition(digit: "4")
x.repetition(digit: "1")
