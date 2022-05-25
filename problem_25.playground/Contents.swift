//
// svo: 23.05.2022
//
// Problem 25. Minus without "-"
//
// bit operator "~": 64 = 01000000
// ~ меняет побитово всме знаки на противоположные, т.е.
// ~64 = 10111111 = -65

func subtracting(subtract: Int, from: Int) -> Int {
    return from + ~subtract + 1
}

subtracting(subtract: 4, from: 13)
