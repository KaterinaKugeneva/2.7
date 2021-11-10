//
//  WideListViewController.swift
//  2.7
//
//  Created by Ekaterina Kugeneva on 09.11.2021.
//

import UIKit

class WideListViewController: UITableViewController {
    
    // WA:
    private var persons = Person.createList()
    //var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].firstname + " " + persons[section].lastname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = persons[indexPath.section].phone
            content.image = UIImage.init(systemName: "phone")
        } else {
            content.text = persons[indexPath.section].email
            content.image = UIImage.init(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}
