import Foundation

let start = Date()

//testAll()

public func challenge31(source: String, destination: String) -> Bool {
    let fm = FileManager.default
    var isDirectory: ObjCBool = false
    
    print(source)
    print(destination)
    
    guard source != destination else { return false }
    guard fm.fileExists(atPath: source, isDirectory: &isDirectory) && isDirectory.boolValue == true else { return false }
    
    let sourceURL = URL(fileURLWithPath: source)
    let destinationURL = URL(fileURLWithPath: destination)
    
    do {
        try fm.copyItem(at: sourceURL, to: destinationURL)
    } catch {
        print("Copy failed: \(error.localizedDescription)")
        return false
    }
    return true
}


// challenge31
let dir31_1 = "\(NSTemporaryDirectory())dir31-1"
let dir31_2 = "\(dir31_1)/dir31-2"
let dir31_3 = "\(dir31_2)/dir31-3"
let file31_1 = "\(dir31_1)/file31-1.txt"
let file31_2 = "\(dir31_2)/file31-2.txt"
let file31_3 = "\(dir31_3)/file31-3.txt"
let dir31_out = "\(NSTemporaryDirectory())dir31-out"
let dir31_out_1 = "\(dir31_out)/dir31-1"
let dir31_out_2 = "\(dir31_out_1)/dir31-2"
let dir31_out_3 = "\(dir31_out_2)/dir31-3"
let file31_out_1 = "\(dir31_out_1)/file31-1.txt"
let file31_out_2 = "\(dir31_out_2)/file31-2.txt"
let file31_out_3 = "\(dir31_out_3)/file31-3.txt"

// Create files
if fileExists(dir31_1) { deleteFile(dir31_1) }
if fileExists(dir31_out) { deleteFile(dir31_out) }

assert(fileExists(dir31_1) == false, failedComment(31))
assert(fileExists(dir31_out) == false, failedComment(31))


createDirectory(at: dir31_1)
createDirectory(at: dir31_2)
createDirectory(at: dir31_3)
createDirectory(at: dir31_out)
createFile(at: file31_1, contents: "")
createFile(at: file31_2, contents: "")
createFile(at: file31_3, contents: "")

// Tests for false cases
//assert(challenge31(source: "abc", destination: NSTemporaryDirectory()) == false, failedComment(31))    // from is not directory
//assert(challenge31(source: NSTemporaryDirectory(), destination: "abc") == false, failedComment(31))    // to is not directory
//assert(challenge31(source: NSTemporaryDirectory(), destination: NSTemporaryDirectory()) == false, failedComment(31))    // from == to returns false

// Test for true case
assert(challenge31(source: dir31_1, destination: "\(dir31_out)/dir31_1") == true, failedComment(31))
assert(fileExists(dir31_out_1) == true, failedComment(31))
assert(fileExists(dir31_out_2) == true, failedComment(31))
assert(fileExists(dir31_out_3) == true, failedComment(31))
assert(fileExists(file31_out_1) == true, failedComment(31))
assert(fileExists(file31_out_2) == true, failedComment(31))
assert(fileExists(file31_out_3) == true, failedComment(31))

// Clean files
if fileExists(dir31_1) { deleteFile(dir31_1) }
if fileExists(dir31_out) { deleteFile(dir31_out) }


print("Passed all tests: \(Date().timeIntervalSince(start)) sec")

