//
// svo: 24.05.2022
//
// Problem 27. Написать расширение для коллекций, возвращающее N наименьших элементов, отсортированных по возрастанию. Нпример:
// [2, 1, 8, 5, 6].sortUpToN(n: 3) -> [1, 2, 5]
//

extension Collection where Iterator.Element == Int {
    func sortUpToN(n: Int) -> [Int] {
        var toreturn = Array<Int>()

        //var sortedCollection = self.sorted(by: <)
        for i in 0...n-1 {
            toreturn.append(self.sorted(by: <)[i])
        }
        return toreturn
    }
    
}
[2, 1, 8, 5, 6].sortUpToN(n: 3)
