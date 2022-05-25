//
// svo: 23.05.2022
//
// Problem 21. Написать функцию, которая принимает UInt и возвращает UInt, которое является его обратным в бинарном представлении (сдвинутое так, чтобы было 8 бинарных символов). Например, 32 = 100000 = 00100000 ~> обратное 00000100 = 4.
//

func binReverse(_ input: UInt) -> UInt {
    var binInput = String(String(input, radix: 2).reversed())
    
    while binInput.count < 8 {
        binInput.append("0")
    }
    // Можно дописывать так:
    // String(repeating: "0", count: counter) + ...
    
    
    return UInt(binInput, radix: 2)!
}

binReverse(3)
binReverse(32)
