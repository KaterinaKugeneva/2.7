//
//  DataModel.swift
//  2.7
//
//  Created by Ekaterina Kugeneva on 09.11.2021.
//

import Foundation

struct Person {
    var firstname: String
    var lastname: String
    var email: String
    var phone: String
    
    static func createList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.human.names.shuffled()
        let lastnames = DataManager.human.lastnames.shuffled()
        let emails = DataManager.human.emails.shuffled()
        let phones = DataManager.human.phones.shuffled()
        
        for index  in 0 ... names.count - 1 {
            let human = Person (firstname: names[index],
                                lastname: lastnames[index],
                                email: emails[index],
                                phone: phones[index])
            persons.append(human)
        }
        return persons
    }
}
