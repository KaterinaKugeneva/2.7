//
//  ViewController.swift
//  2.7
//
//  Created by Ekaterina Kugeneva on 09.11.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    private var persons = Person.createList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     guard let detailsVC = segue.destination as? DetailsViewController else { return }
     detailsVC.user = sender as? Person ?? persons[0]
     
     }
    
    
 /*  // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let detailsVC = segue.destination as? DetailsViewController {
                detailsVC.user = sender as? Person ?? persons[0]
            }
            else if let navigationVC = viewController as? UINavigationController {
                if let usersVC = navigationVC.topViewController as? WideListViewController {
                    usersVC.persons = persons
                }
            }
        }
    }
    */
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.firstname) \(contact.lastname)"
        cell.contentConfiguration = content
        return (cell)
    }
    
    
    
}
