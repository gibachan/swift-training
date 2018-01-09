import Foundation

let start = Date()

testAll()

// challenge25
assert(challenge25(input: 9) == 3, failedComment(25))
assert(challenge25(input: 16777216) == 4096, failedComment(25))
assert(challenge25(input: 16) == 4, failedComment(25))
assert(challenge25(input: 15) == 3, failedComment(25))


print("Passed all tests: \(Date().timeIntervalSince(start)) sec")
