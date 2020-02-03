//
//  ViewController.swift
//  Base
//
//  Created by Daniel Hjärtström on 2020-02-03.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

class ViewController: BaseTableViewController<Person, AnyViewModel> {

    override var urlString: String? {
        return "http://demo6427581.mockable.io/"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchArray()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
        cell.textLabel?.text = items[indexPath.section].items[indexPath.row].name
        return cell
    }

}

