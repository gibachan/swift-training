#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
    import Darwin
#elseif os(Linux)
    import Glibc
#endif

extension Sequence {
    public func shuffled() -> [Iterator.Element] {
        var contents = Array(self)
        for i in 0 ..< contents.count {
            #if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
                // FIXME:This breaks if the array has 2^32 elements or more.
                let j = i + Int(arc4random_uniform(UInt32(contents.count - i)))
            #elseif os(Linux)
                // FIXME:This has modulo bias. Also, 'random' should be seeded by calling 'srandom'.
                let j = i + random() % (contents.count - 1)
            #endif
            contents.swapAt(i, j)
        }
        return contents
    }
}

#if os(iOS)
    import UIKit
    
    extension PlaygroundQuickLook {
        public static func monospacedText(_ string: String) -> PlaygroundQuickLook {
            let text = NSMutableAttributedString(string: string)
            let range = NSRange(location: 0, length: text.length)
            let style = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
            style.lineSpacing = 0
            style.alignment = .left
            style.maximumLineHeight = 17
            text.addAttribute(.font, value: UIFont(name: "Menlo", size: 13)!, range: range)
            text.addAttribute(.paragraphStyle, value: style, range: range)
            return PlaygroundQuickLook.attributedString(text)
        }
    }
#endif
