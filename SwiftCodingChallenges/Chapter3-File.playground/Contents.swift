import Foundation

let start = Date()

//testAll()

public func challenge33(directory: String) -> [String] {
    return []
}

// challenge31
let dir33_1 = "\(NSTemporaryDirectory())dir33_1"
let dir33_2 = "\(dir33_1)/subdir"
let dir33_3 = "\(dir33_1)/sub/sub/sub/sub/subdir"
let file33_1 = "\(dir33_2)/a.txt"
let file33_2 = "\(dir33_3)/a.txt"

if fileExists(dir33_1) { deleteFile(dir33_1) }

createDirectory(at: dir33_2)
createDirectory(at: dir33_3)
createFile(at: file33_1, contents: "abc")
createFile(at: file33_2, contents: "abc")

if fileExists(dir33_1) { deleteFile(dir33_1) }

print("Passed all tests: \(Date().timeIntervalSince(start)) sec")
