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
        setupTableView()
    }
    
    private func setupTitle() {
        self.title = "Emoji Unicode List 5.0 "
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Emoji.all.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StringEmojiExampleCell") else {
            fatalError()
        }
        guard let emojiLabel: UILabel = cell.viewWithTag(1) as? UILabel, let descriptionLabel: UILabel = cell.viewWithTag(2) as? UILabel else {
            fatalError()
        }
        emojiLabel.text = Emoji.all[indexPath.row]
        descriptionLabel.text = Emoji.all[indexPath.row].niceUnicodeName
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}

