import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that returns a string with any consecutive spaces replaced with a single space.
// -----------------------------------------------------------------------------

// 0.0075sec
//public func challenge7(input: String) -> String {
//    let count = input.count
//    var output = ""
//
//    for i in 0 ..< count - 1 {
//        let c = input[input.index(input.startIndex, offsetBy: i)]
//        if c == " " {
//            let c2 = input[input.index(input.startIndex, offsetBy: i + 1)]
//            if c2 != " " {
//                output.append(c)
//            }
//        } else {
//            output.append(c)
//        }
//    }
//    output.append(input[input.index(input.endIndex, offsetBy: -1)])
//
//    return output
//}

// 0.009sec
// Regular expression can be slower, but it is clear.
public func challenge7(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}


