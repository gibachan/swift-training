import Foundation

// -----------------------------------------------------------------------------
// Fizz Buzz
// -----------------------------------------------------------------------------
// Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3,
// “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five,
// or the counter number for all other cases.
// -----------------------------------------------------------------------------

public func challenge16(input: Int) -> String {
    if input % 3 == 0 {
        if input % 5 == 0 {
            return "Fizz Buzz"
        } else {
            return "Fizz"
        }
    } else if input % 5 == 0 {
        return "Buzz"
    }
    
    return "\(input)"
}

