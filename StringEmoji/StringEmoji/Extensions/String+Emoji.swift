//
//  String+Emoji.swift
//  StringEmoji
//
//  Created by Juan Carlos Ospina Gonzalez on 21/11/2017.
//

import Foundation
extension String {

    /// Whether or not the `String` instance contains an Emoji character
    public var containsEmoj: Bool {
        if let _ = self.rangeOfCharacter(from: emojiCharacterSet) {
            return true
        }
        return false
    }

    /// Whether or not the `String` instance represents a known single Emoji character
    public var isEmoji: Bool {
        return count == 1 && containsEmoj
    }

}
