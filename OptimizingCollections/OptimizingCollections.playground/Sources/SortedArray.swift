#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
    import Darwin
#elseif os(Linux)
    import Glibc
#endif

//public protocol SortedSet: BidirectionalCollection, SetAlgebra {
//    associatedtype Element: Comparable
//}

public protocol SortedSet: BidirectionalCollection, CustomStringConvertible, CustomPlaygroundQuickLookable where Element: Comparable {
    init()
    func contains(_ element: Element) -> Bool
    mutating func insert(_ newElement: Element) -> (inserted: Bool, memberAfterInsert: Element)
}

// Comforming to CustomStringConvertible
extension SortedSet {
    public var description: String {
        let contents = self.lazy.map { "\($0)" }.joined(separator: ",")
        return "[\(contents)]"
    }
}

// Comforming to CustomPlaygroundQuickLookable
extension SortedSet {
    public var customPlaygroundQuickLook: PlaygroundQuickLook {
        #if os(iOS)
            return.monospacedText(String(describing: self))
        #else
            return .text(String(describing: self))
        #endif
    }
}

public struct SortedArray<Element: Comparable>: SortedSet {
    fileprivate var storage: [Element] = []
    
    public init() {}
}

extension SortedArray {
    // Always returns a valid index, even if the element is not currently in the set.
    // This will make index(for:) usable for insertion.
    // (This is a subtle difference to Collection's standard index(of:) method.)
    func index(for element: Element) -> Int {
        var start = 0
        var end = storage.count
        while start < end {
            let middle = start + (end - start) / 2
            if element > storage[middle] {
                start = middle + 1
            } else {
                end = middle
            }
        }
        return start
    }
}

// CountableClosedRange
extension SortedArray {
    public func index(of element: Element) -> Int? {
        let index = self.index(for: element)
        guard index < count, storage[index] == element else { return nil }
        return index
    }
}

// Comforming to CountableClosedRange
extension SortedArray {
    public func contains(_ element: Element) -> Bool {
        let index = self.index(for: element)
        return index < count && storage[index] == element
    }
}

// ClosedRangeIterator
extension SortedArray {
    public func forEach(_ body: (Element) throws -> Void) rethrows {
        try storage.forEach(body)
    }
}

// ClosedRangeIterator
extension SortedArray {
    public func sorted() -> [Element] {
        return storage
    }
}

extension SortedArray {
    @discardableResult
    public mutating func insert(_ newElement: Element) -> (inserted: Bool, memberAfterInsert: Element) {
        let index = self.index(for: newElement)
        if index < count && storage[index] == newElement {
            return (false, storage[index])
        }
        storage.insert(newElement, at: index)
        return (true, newElement)
    }
}

extension SortedArray: RandomAccessCollection {
    public typealias Indices = CountableRange<Int>
    
    public var startIndex: Int { return storage.startIndex }
    public var endIndex: Int { return storage.endIndex }
    
    public subscript(index: Int) -> Element { return storage[index] }
}
