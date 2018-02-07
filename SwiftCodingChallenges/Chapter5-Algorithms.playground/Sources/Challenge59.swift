import Foundation

// -----------------------------------------------------------------------------
// Quicksort
// -----------------------------------------------------------------------------
// Create an extension for arrays that sorts them using the quicksort algorithm.
//
// Tip #1: The quicksort algorithm picks an item from its array to use as the pivot point,
// then splits itself into either two parts (less than or greater than) or three (less, greater, or equal).
// These parts then repeat the pivot and split until the entire array has been split,
// then it gets rejoined so that less, equal, and greater are in order.
//
// Tip #2: I can write quicksort from memory, but I cannot write fully optimized quicksort from memory.
// It’s a complex beast to wrangle, and it requires careful thinking – honestly,
// I have better things to keep stored in what little space I have up there!
// So, don’t feel bad if your attempt is far from ideal:
// there’s no point creating a perfect solution if you struggle to remember it during an interview.
//
// Tip #3: Quicksort is an algorithm so well known and widely used that you don’t even write a space in its name
// – it’s “quicksort” rather than “quick sort”.
// -----------------------------------------------------------------------------

extension Array where Element: Comparable {
    // Poor implementation of quicksort in terms of raw performance
    // but it certainly passes the challenge and ought to be simple enough to memorize.
    public func challenge59a() -> [Element] {
        guard count > 1 else { return self }
        
        // pivot on the center of the array
        let pivot = self[count / 2]
        
        // Another popular choice of pivot that chooses random pivot
        //        let pivot = self[Int(arc4random_uniform(UInt32(count)))]
        
        // If your array is often already sorted, using count / 2 is a great choice!
        // If your array is very large, you will want to take a more complex approach.
        // Because the time spent picking a better pivot is going to pay off with reduces sort time.
        // So, you might choose simething like median of three, where you pick 3 random elements from the array
        // and pivot on whichever one line in the center.
        
        
        // create three new buckets that we'll sort ourselves into
        var before = [Element]()
        var after = [Element]()
        var equal = [Element]()
        
        // loop over all items, placing each one into a bucket by comparing against our pivot
        for item in self {
            if item < pivot {
                before.append(item)
            } else if item > pivot {
                after.append(item)
            } else {
                equal.append(item)
            }
        }
        
        // call this function recursively then return the combined innput
        return before.challenge59a() + equal + after.challenge59a()
    }
    
    // Slightly slower implementation that is even easier to memorize
    public func challenge59b() -> [Element] {
        guard count > 1 else { return self }
        
        let pivot = self[count / 2]
        let before = filter { $0 < pivot }
        let after = filter { $0 > pivot }
        let equal = filter { $0 == pivot }
        
        return before.challenge59b() + equal + after.challenge59b()
    }
    
    public mutating func challenge59c(left: Int, right: Int) {
        // make sure we have a sensible range to work with
        guard left < right else { return }
        
        // use the right-hand element, because that's moved last
        let pivot = self[right]
        
        // set our split point - the marker where elements start being greater than the pivot - to be left edge
        var splitPoint = left
        
        // count through all items in the array
        for i in left ..< right {
            // if the item is less than our pivot
            if self[i] < pivot {
                // move it so that it's at the split point
                (self[i], self[splitPoint]) = (self[splitPoint], self[i])
                // then move the split point forward one place
                splitPoint += 1
            }
        }
        
        // move our pivot item to the split point
        (self[right], self[splitPoint]) = (self[splitPoint], self[right])
        
        // recursively call this function on everything before the split
        challenge59c(left: left, right: splitPoint - 1)
        // and everything after the split
        challenge59c(left: splitPoint + 1, right: right)
    }
    
}
