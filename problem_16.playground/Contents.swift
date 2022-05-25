//
// svo: 23.05.2022
//
// Problem 16. Написать функцию, которая принимает минимальное максимальное значения диапазона и генерирует рандомное число из него (включительно)
//

func getANumber(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}
getANumber(min: 32, max: 43)
