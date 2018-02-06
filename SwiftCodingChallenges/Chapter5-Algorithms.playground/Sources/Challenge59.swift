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
