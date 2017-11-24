//
//  ViewController.swift
//  Example
//
//  Created by Juan Carlos Ospina Gonzalez on 21/11/2017.
//

import UIKit
import StringEmoji

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("".isEmoji) // false
        print("😁".isEmoji) // true
        print("😁😜".isEmoji) // false
        print("😁😜".containsEmoj) // true
        print("á".unicodeName) // \N{LATIN SMALL LETTER A WITH ACUTE}
        print("😜".unicodeName) // "\N{FACE WITH STUCK-OUT TONGUE AND WINKING EYE}"
        print("😜".niceUnicodeName) // "FACE WITH STUCK-OUT TONGUE AND WINKING EYE"
        print("😁😜".unicodeName) // \N{GRINNING FACE WITH SMILING EYES}\N{FACE WITH STUCK-OUT TONGUE AND WINKING EYE}
        print("😁😜".niceUnicodeName) // GRINNING FACE WITH SMILING EYES FACE WITH STUCK-OUT TONGUE AND WINKING EYE
        print("😜".first!.isEmoji) // true
    }
}

