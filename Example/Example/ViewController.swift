//
//  ViewController.swift
//  Example
//
//  Created by Juan Carlos Ospina Gonzalez on 21/11/2017.
//

import UIKit
import StringEmoji

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitle()
    }
    
    private func setupTitle() {
        self.title = "Emoji Unicode List 5.0 "
    }
}

