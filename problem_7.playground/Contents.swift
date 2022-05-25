//
// svo: 22.05.2022
//
// Problem 7. Remove repeated spaces in a string and leave only one in each case
//

func removeRedundantSpaces(_ str: String) -> String {
    var seenSpace = false
    var outputString = ""
    
    for symbol in str {
        if symbol == " " {
            if seenSpace {
                continue
            }
            seenSpace = true
        } else {
            seenSpace = false
        }
        outputString.append(symbol)
    }
    return outputString
}
removeRedundantSpaces("wdf sdf   sdf     sdf             sdf sdf  sdf   sdf      sdf")
