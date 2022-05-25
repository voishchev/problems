//
// svo: 23.05.2022
//
// Problem 19. Написать функцию, которая принимает Int и возвращает true, если число простое

func isPrime(_ input: Int) -> Bool {
    for i in 2..<input {
        if input%i == 0 {
            return false
        }
    }
    return true
}
isPrime(18)
isPrime(17)
