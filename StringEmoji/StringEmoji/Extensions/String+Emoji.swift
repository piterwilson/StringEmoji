//
//  String+Emoji.swift
//  StringEmoji
//
//  Created by Juan Carlos Ospina Gonzalez on 21/11/2017.
//

import Foundation
extension String {

    /// If the `String` represents a single Emoji character, the name of that Emoji, nil otherwise.
    public var emojiName: String? {
        return String.emojis[self]
    }

    /// Whether or not the `String` instance represents a known single Emoji character
    public var isEmoji: Bool {
        return emojiName != nil
    }
}
