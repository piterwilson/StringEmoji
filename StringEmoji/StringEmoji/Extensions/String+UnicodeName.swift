//
//  String+UnicodeName.swift
//  StringEmoji
//
//  Created by Juan Carlos Ospina Gonzalez on 24/11/2017.
//  Copyright © 2017 Piterwilson. All rights reserved.
//

import Foundation

extension String {

    /// Applies a kCFStringTransformToUnicodeName CFStringTransform on a copy of the String
    public var unicodeName: String {
        let cfstr:NSMutableString = NSMutableString(string: self) as CFMutableString
        var range:CFRange = CFRangeMake(0, CFStringGetLength(cfstr))
        CFStringTransform(cfstr, &range, kCFStringTransformToUnicodeName, false)
        return String(cfstr)
    }

    /// Returns the result of a kCFStringTransformToUnicodeName CFStringTransform with `\N{` prefix and '}' suffix removed
    public var niceUnicodeName: String {
        let result = unicodeName
        if self != result {
            return unicodeJunkRemoved()
        }
        return unicodeName
    }

    /// Loops trough each character in a String and strips `\N{` prefix and '}' suffix junk characters resulting from a kCFStringTransformToUnicodeName CFStringTransform
    ///
    /// - Returns: The result of a kCFStringTransformToUnicodeName CFStringTransform with `\N{` prefix and '}' suffix removed
    private func unicodeJunkRemoved() -> String {
        if unicodeName != self {
            var out: [String] = []
            for char in self {
                let stringChar: String = String(char)
                let stringCharUnicode: String = stringChar.unicodeName
                if stringChar != stringCharUnicode {
                    if stringCharUnicode.hasPrefix("\\N{") && stringCharUnicode.hasSuffix("}") {
                        out.append(String(stringCharUnicode[stringCharUnicode.index(startIndex, offsetBy: 3) ..< stringCharUnicode.index(stringCharUnicode.endIndex, offsetBy: -1)]))
                    }
                } else {
                    out.append(stringChar)
                }
            }
            return out.joined(separator: " ")
        }
        return self
    }
}
