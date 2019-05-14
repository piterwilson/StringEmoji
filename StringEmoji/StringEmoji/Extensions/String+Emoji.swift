//
//  String+Emoji.swift
//  StringEmoji
//
//  Created by Juan Carlos Ospina Gonzalez on 21/11/2017.
//

import Foundation
extension String {

    /// Whether or not the `String` instance contains an Emoji character
    public var containsEmoji: Bool {
        if let _ = self.rangeOfCharacter(from: Emoji.characterSet) {
            return true
        }
        return false
    }

    /// Whether or not the `String` instance represents a known single Emoji character
    public var isEmoji: Bool {
        return count == 1 && containsEmoji
    }

}
