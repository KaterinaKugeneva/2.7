//
//  DetailsViewController.swift
//  2.7
//
//  Created by Ekaterina Kugeneva on 09.11.2021.
//



import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneDetails: UILabel!
    @IBOutlet weak var emailDetails: UILabel!
    
    var user: Person = Person(firstname: "", lastname: "", email: "", phone: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(user.firstname) \(user.lastname)"
        phoneDetails.text = "Phone: " + user.phone
        emailDetails.text = "Email: " + user.email
        
        
    }
    
    
    
    
    
}
