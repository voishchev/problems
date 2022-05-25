//
// svo: 23.05.2022
//
// Problem 20. Написать функцию, которая принимает Int и возвращает следующее за ним и предыдущее, у которых такое же количество единиц в бинарном представлении. Например, 12 = 1100 => предыдущее - 1010 = 10, а следующее - 10001 = 17. Если такого числа нет - возвращает nil
//

func bin(_ input: Int) -> (previous: Int?, next: Int?) {
    // 10 to 2:
    let binaryInput = String(input, radix: 2)
    let numOfOnes = binaryInput.filter { $0 == "1" }.count
    
    var nextNum: Int? = nil
    var prevNum: Int? = nil
    
    // Finding next
    for i in (input + 1)...Int.max {
        let currentNumOfOnes = String(i, radix: 2).filter {$0 == "1"}.count
        if currentNumOfOnes == numOfOnes {
            nextNum = i
            break
        }
    }
    
    // Finding previous
    for i in (0..<input).reversed() {
        let currentNumOfOnes = String(i, radix: 2).filter {$0 == "1"}.count
        if currentNumOfOnes == numOfOnes {
            prevNum = i
            break
        }
    }
    return (previous: prevNum, next: nextNum)
}

bin(17)
bin(12)
