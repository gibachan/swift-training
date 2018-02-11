import Foundation

// -----------------------------------------------------------------------------
// Flood fill
// -----------------------------------------------------------------------------
// Write a function that accepts a two-dimensional array of integers that are 0 or 1,
// a new number to place, and a position to start.
// You should read the existing number at the start position, change it to the new number,
// then change any surrounding numbers that matched the start number,
// then change any surrounding those, and so on - like a flood fill algorithm in Photoshop.
// -----------------------------------------------------------------------------

public func challenge63a(fill: Int, in grid: [[Int]], at point: (x: Int, y: Int)) -> [[Int]] {
    var returnValue = grid
    var squaresToFill = [point]
    let startNumber = grid[point.y][point.x]
    
    func tryAddMove(_ move: (x: Int, y: Int)) {
        guard move.x >= 0 else { return }
        guard move.x < 10 else { return }
        guard move.y >= 0 else { return }
        guard move.y < 10 else { return }
        guard returnValue[move.y][move.x] == startNumber else { return }
        squaresToFill.append(move)
    }
    
    while let square = squaresToFill.popLast() {
        guard returnValue[square.y][square.x] != fill else { continue }
        returnValue[square.y][square.x] = fill
        
        tryAddMove((x: square.x, y: square.y - 1))
        tryAddMove((x: square.x, y: square.y + 1))
        tryAddMove((x: square.x - 1, y: square.y))
        tryAddMove((x: square.x + 1, y: square.y))
    }
    
    return returnValue
}

public func challenge63b(fill newNumber: Int, in grid: inout [[Int]], at point: (x: Int, y: Int), replacing: Int? = nil) {
    // bail out if this position is invalid
    guard point.x >= 0 else { return }
    guard point.x < 10 else { return }
    guard point.y >= 0 else { return }
    guard point.y < 10 else { return }
    
    // `replacing` will be set on 2nd and subsequent runs
    let startNumber = replacing ?? grid[point.y][point.x]
    
    if grid[point.y][point.x] == startNumber {
        // adjust this point
        grid[point.y][point.x] = newNumber
        
        // and fill in surrounding squares
        challenge63b(fill: newNumber, in: &grid, at: (x: point.x, y: point.y - 1), replacing: startNumber)
        challenge63b(fill: newNumber, in: &grid, at: (x: point.x, y: point.y + 1), replacing: startNumber)
        challenge63b(fill: newNumber, in: &grid, at: (x: point.x - 1, y: point.y), replacing: startNumber)
        challenge63b(fill: newNumber, in: &grid, at: (x: point.x + 1, y: point.y), replacing: startNumber)
    }
}
