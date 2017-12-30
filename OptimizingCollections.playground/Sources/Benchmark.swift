import Foundation

import Foundation

func benchmark(count: Int, measure: (String, () -> Void) -> Void) {
    var set = SortedArray<Int>()
    let input = (0 ..< count).shuffled()
    measure("SortedArray.insert") {
        for value in input {
            set.insert(value)
        }
    }
    
    let lookups = (0 ..< count).shuffled()
    measure("SortedArray.contains") {
        for element in lookups {
            guard set.contains(element) else { fatalError() }
        }
    }
    
    measure("SortedArray.forEach") {
        var i = 0
        set.forEach { element in
            guard element == i else { fatalError() }
            i += 1
        }
        guard i == input.count else { fatalError() }
    }
    
    measure("SortedArray.for-in") {
        var i = 0
        for element in set {
            guard element == i else { fatalError() }
            i += 1
        }
        guard i == input.count else { fatalError() }
    }
}

// Performation measurements
//for size in (0 ..< 20).map({ 1 << $0 }) {
//    benchmark(count: size, measure: { (name, body) in
//        let start = Date()
//        body()
//        let end = Date()
//        print("\(name), \(size), \(end.timeIntervalSince(start))")
//    })
//}
