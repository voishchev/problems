//
// svo: 23.05.2022
//
// Problem 15. Написать функцию, которая считает от 1 до 100 и печатает "Three", если число делится на 3, "Five", если число делится на 5, "Three Five", если делится и на 3 и на 5.
//

func devisions() {
    for i in 1...100 {
        var responce = ""
        if i%3 == 0 {
            responce.append("Three ")
        }
        if i%5 == 0 {
            responce.append("Five")
        }
        print("\(i)  \(responce)")
    }
}
devisions()
