import Foundation

public func testAll() {
    // challenge27
    assert(challenge27(filename: resource("File27"), lineCount: 3) == "Twelfth Night, Othello, Macbeth", failedComment(27))
    assert(challenge27(filename: resource("File27"), lineCount: 100) == "Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony And Cleopatra", failedComment(27))
    
    // challenge28
    let file28 = tempPath(to: "File28.txt")
    
    deleteFile(file28)
    assert(fileExists(file28) == false, failedComment(28))
    
    challenge28(log: "ABC", to: file28)
    assert(contents(file28).contains("ABC"), failedComment(28))
    
    challenge28(log: "def", to: file28)
    assert(contents(file28).contains("ABC") &&
        contents(file28).contains("def"), failedComment(28))
    
    deleteFile(file28)
    
    // challenge29
    assert(challenge29().contains("Documents"), failedComment(29))

    // challenge30
    // TODO: Add test for 48 hours past jpeg files.
    createFile(at: tempPath(to: "a.jpg"), contents: "")
    createFile(at: tempPath(to: "b.jg"), contents: "")
    createFile(at: tempPath(to: "c.jpeg"), contents: "")
    
    assert(challenge30(directory: NSTemporaryDirectory()).contains("a.jpg"), failedComment(30))
    assert(!challenge30(directory: NSTemporaryDirectory()).contains("b.jg"), failedComment(30))
    assert(challenge30(directory: NSTemporaryDirectory()).contains("c.jpeg"), failedComment(30))
    
    deleteFile(tempPath(to: "a.jpg"))
    deleteFile(tempPath(to: "b.jg"))
    deleteFile(tempPath(to: "c.jpeg"))

    // challenge31
    let dir31_1 = "\(NSTemporaryDirectory())dir31_1"
    let dir31_2 = "\(dir31_1)/dir31_2"
    let dir31_3 = "\(dir31_2)/dir31_3"
    let file31_1 = "\(dir31_1)/file31_1.txt"
    let file31_2 = "\(dir31_2)/file31_2.txt"
    let file31_3 = "\(dir31_3)/file31_3.txt"
    let dir31_out = "\(NSTemporaryDirectory())dir31_out"
//    let dir31_out_1 = "\(dir31_out)/dir31_1"
//    let dir31_out_2 = "\(dir31_out_1)/dir31_2"
//    let dir31_out_3 = "\(dir31_out_2)/dir31_3"
//    let file31_out_1 = "\(dir31_out_1)/file31_1.txt"
//    let file31_out_2 = "\(dir31_out_2)/file31_2.txt"
//    let file31_out_3 = "\(dir31_out_3)/file31_3.txt"
    
    // Create files
    if fileExists(dir31_1) { deleteFile(dir31_1) }
    if fileExists(dir31_out) { deleteFile(dir31_out) }
    
    createDirectory(at: dir31_1)
    createDirectory(at: dir31_2)
    createDirectory(at: dir31_3)
    createDirectory(at: dir31_out)
    createFile(at: file31_1, contents: "")
    createFile(at: file31_2, contents: "")
    createFile(at: file31_3, contents: "")
    
    // Tests for false cases
    assert(challenge31(source: "/abc", destination: NSTemporaryDirectory()) == false, failedComment(31))    // from is not directory
    assert(challenge31(source: NSTemporaryDirectory(), destination: NSTemporaryDirectory()) == false, failedComment(31))    // from == to returns false
    
    // TODO: Test for true case
    // This does not work for permission issue
    //assert(challenge31(source: dir31_1, destination: "\(dir31_out)/dir31_1") == true, failedComment(31))
    //assert(fileExists(dir31_out_1) == true, failedComment(31))
    //assert(fileExists(dir31_out_2) == true, failedComment(31))
    //assert(fileExists(dir31_out_3) == true, failedComment(31))
    //assert(fileExists(file31_out_1) == true, failedComment(31))
    //assert(fileExists(file31_out_2) == true, failedComment(31))
    //assert(fileExists(file31_out_3) == true, failedComment(31))
    
    // Clean files
    if fileExists(dir31_1) { deleteFile(dir31_1) }
    if fileExists(dir31_out) { deleteFile(dir31_out) }
    
    // challenge32
    assert(challenge32a(filename: resource("File32-1"), count: "Hello") == 1, failedComment(32))
    assert(challenge32a(filename: resource("File32-1"), count: "Hello,") == 0, failedComment(32))
    assert(challenge32a(filename: resource("File32-2"), count: "Spain") == 1, failedComment(32))
    assert(challenge32a(filename: resource("File32-2"), count: "in") == 1, failedComment(32))
    assert(challenge32a(filename: resource("File32-3"), count: "I’m") == 1, failedComment(32))
    
    // challenge33
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
    
    assert(challenge33b(directory: dir33_1) == ["a.txt"], failedComment(33))
    
    if fileExists(dir33_1) { deleteFile(dir33_1) }
    
    // challenge34
    let dir34_1 = "\(NSTemporaryDirectory())dir34_1"
    let dir34_2 = "\(dir34_1)/subdirectory"
    
    let file34_1 = "\(dir34_1)/a"   // FIXME: Should be excutable
    let file34_2 = "\(dir34_2)/b"   // FIXME: Should be excutable
    
    if fileExists(dir34_1) { deleteFile(dir34_1) }
    createDirectory(at: dir34_2)
    createFile(at: file34_1, contents: "abc")
    createFile(at: file34_2, contents: "def")
    
    // Should test with excutable files
    //assert(challenge34(directory: dir34_1) == ["a", "b"], failedComment(34))
    assert(challenge34(directory: dir34_1) == [], failedComment(34))
    
    if fileExists(dir34_1) { deleteFile(dir34_1) }

}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

public func resource(_ filename: String) -> String {
    return Bundle.main.path(forResource: filename, ofType: "txt")!
}

public func tempPath(to filename: String) -> String {
    return "\(NSTemporaryDirectory())\(filename)"
}

public func fileExists(_ path: String) -> Bool {
    return FileManager.default.fileExists(atPath: path)
}

public func deleteFile(_ path: String) {
    try? FileManager.default.removeItem(atPath: path)
}

public func contents(_ path: String) -> String {
    return (try? String(contentsOfFile: path)) ?? ""
}

public func createFile(at path: String, contents: String) {
    do {
        try contents.write(toFile: path, atomically: true, encoding: .utf8)
    } catch let error {
        print("Error:\(error.localizedDescription)")
    }
}

public func createDirectory(at path: String) {
    do {
        try FileManager.default.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
    } catch let error {
        print("Error:\(error.localizedDescription)")
    }
}


