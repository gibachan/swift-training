import Foundation

let start = Date()

//testAll()

extension Array where Element: Comparable {
    public func challenge59a() -> [Element] {
        return [Element]()
    }
}


assert([12, 5, 4, 9, 3, 2, 1].challenge59a() == [1, 2, 3, 4, 5, 9, 12], failedComment(59))
assert(["f", "a", "b"].challenge59a() == ["a", "b", "f"], failedComment(59))
assert([String]().challenge59a() == [], failedComment(59))

print("Passed all tests: \(Date().timeIntervalSince(start)) sec")
