import Foundation

// -----------------------------------------------------------------------------
// Integer disguised as string
// -----------------------------------------------------------------------------
// Write a function that accepts a string and returns true
// if it contains only numbers, i.e. the digits 0 through 9.
// -----------------------------------------------------------------------------

public func challenge23(input: String) -> Bool {
    let numbers = "0123456789"

    for c in input {
        if !numbers.contains(c) {
            return false
        }
    }

    return true
}

public func challenge23a(input: String) -> Bool {
    return UInt(input) != nil
}

public func challenge23b(input: String) -> Bool {
    for letter in input {
        if Int(String(letter)) == nil {
            return false
        }
    }
    return true
}

// CharacterSet.decimalDigits includes Arabic-Indic like “٢”
public func challenge23c(input: String) -> Bool {
    return input.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
}

public func challenge23d(input: String) -> Bool {
    return input.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
}
