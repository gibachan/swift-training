import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write your own version of the contains() method on String that ignores letter case,
// and without using the existing contains() method.”
// -----------------------------------------------------------------------------

extension String {
//    public func fuzzyContains(_ value: String) -> Bool {
//        let lowercasedSelf = self.lowercased()
//        let lowercasedInput = value.lowercased()
//
//        let selfCount = self.count
//        let inputCount = lowercasedInput.count
//        var start = 0
//
//        while selfCount >= (inputCount + start) {
//            let startIndex = lowercasedSelf.index(lowercasedSelf.startIndex, offsetBy: start)
//            let endIndex = lowercasedSelf.index(startIndex, offsetBy: inputCount)
//            let mid = lowercasedSelf[startIndex..<endIndex]
//            if mid == lowercasedInput {
//                return true
//            }
//            start += 1
//        }
//
//        return false
//    }
    
    public func fuzzyContains(_ string: String) -> Bool {
        return self.uppercased().range(of: string.uppercased()) != nil
    }
}


