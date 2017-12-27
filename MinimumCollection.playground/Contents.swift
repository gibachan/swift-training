import Foundation

struct MinimumCollection {
    var values: [Int] = []
    
    init() {}
    init(values: [Int]) { self.values = values }
}

extension MinimumCollection: Collection {
    var startIndex: Int {
        return 0
    }
    
    var endIndex: Int {
        return values.count
    }
    
    subscript(i: Int) -> Int {
        return values[i]
    }
    
    func index(after i: Int) -> Int {
        return values.index(after: i)
    }
}

var c = MinimumCollection(values: [1, 2, 3, 4, 5, 6, 7])

print("First value is \(c.first!)")
print("Number of collection is \(c.count)")

for v in c {
    print("value: \(v)")
}

c.filter { $0 % 2 == 0 }
    .map { print("\($0) is even number.") }
