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
        print("😜".emojiName as Any) // Optional("winking face with tongue")
        print(String.emojis["😁"] as Any) // Optional("beaming face with smiling eyes")
    }
}

