//
//  Character+Emoji.swift
//  StringEmoji
//
//  Created by Juan Carlos Ospina Gonzalez on 24/11/2017.
//  Copyright © 2017 Piterwilson. All rights reserved.
//

import Foundation

extension Character {

     /// Whether or not the `Character ` instance represents a known Emoji character
    public var isEmoji: Bool {
       return emojiCharacterSet.contains(String(self).unicodeScalars.first!)
    }
}
