import Foundation

// -----------------------------------------------------------------------------
// Find prime numbers
// -----------------------------------------------------------------------------
// Write a function that returns an array of prime numbers from 2 up to but excluding N,
// taking care to be as efficient as possible.”
// -----------------------------------------------------------------------------

// Sieve of Eratosthenes algorithm(エラトステネスの篩)
public func challenge61(upTo max: Int) -> [Int] {
    guard max > 1 else { return [] }
    
    var sieve = [Bool](repeating: true, count: max)
    sieve[0] = false
    sieve[1] = false
    
    for number in 2 ..< max {
        if sieve[number] == true {
            for multiple in stride(from: number * number, to: sieve.count, by: number) {
                sieve[multiple] = false
            }
        }
    }
    
    return sieve.enumerated().flatMap { $1 == true ? $0 : nil }
    
}
