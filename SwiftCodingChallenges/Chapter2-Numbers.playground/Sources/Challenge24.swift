import Foundation

// -----------------------------------------------------------------------------
// Add numbers inside a string
// -----------------------------------------------------------------------------
// Given a string that contains both letters and numbers,
// write a function that pulls out all the numbers then returns their sum.
// -----------------------------------------------------------------------------

// This is faster than the other which uses regular expression.
public func challenge24(input: String) -> Int {
    var result = 0
    var tmp = ""
    
    for letter in input {
        let s = String(letter)
        if Int(s) != nil {
            tmp += s
        } else {
            if !tmp.isEmpty {
                if let num = Int(tmp) {
                    result += num
                }
                tmp = ""
            }
        }
    }
    
    if let num = Int(tmp) {
        result += num
    }
    
    return result
}

// This implementation passes tests but not good enough.
// Because it does not consider String vs NSString characteristics.
public func challenge24b(input: String) -> Int {
    var result = 0
    let pattern = "(\\d+)"
    guard let regex = try? NSRegularExpression(pattern: pattern) else { return 0 }
    
    let matches = regex.matches(in: input, range: NSRange(location: 0, length: input.count))
    for m in matches {
        if let num = Int((input as NSString).substring(with: m.range)) {
            result += num
        }
    }
    
    return result
}

public func challenge24c(input: String) -> Int {
    let regex = try! NSRegularExpression(pattern: "(\\d+)", options: [])
    let matches = regex.matches(in: input, options: [], range: NSRange(location: 0, length: input.utf16.count))
    let allNumbers = matches.flatMap { Int((input as NSString).substring(with: $0.range)) }
    return allNumbers.reduce(0, +)
}

