import UIKit

// -----------------------------------------------------------------------------
// Points to angles
// -----------------------------------------------------------------------------
// Write a function that accepts an array of CGPoint pairs,
// and returns an array of the angles between each point pair.
// Return the angles in degrees, where 0 or 360 is straight up.
// -----------------------------------------------------------------------------

public func challenge62(points: [(first: CGPoint, second: CGPoint)]) -> [CGFloat] {
    return points.map {
        let radians = atan2($0.first.y - $0.second.y, $0.first.x - $0.second.x)
        var degrees = (radians * 180 / CGFloat.pi) - 90
        if (degrees < 0) { degrees += 360.0 }
        if degrees == 360 { degrees = 0 }
        return degrees
    }
}

