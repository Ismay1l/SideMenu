//
//  MenuListController.swift
//  MySideMenu
//
//  Created by Ismayil Ismayilov on 13.08.22.
//

import UIKit

class MenuListController: UITableViewController {
    
    var items = [
        "First",
        "Second",
        "Third",
        "Fifth",
        "Sixth",
        "Seventh"
    ]
    
    let darkColor = UIColor(red: 33/255.0,
                            green: 33/255.0,
                            blue: 33/255.0,
                            alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.backgroundColor = darkColor
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.selectionStyle = .none
        cell.backgroundColor = darkColor
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(items[indexPath.row])")
    }
}
