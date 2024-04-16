//
//  Person.swift
//  ContactList
//
//  Created by Влад Руденко on 13.04.2024.
//

import Foundation

struct Person {
    var firstName: String
    var secondName: String
    var telephoneNumber: String
    var email: String
    
    static func makeRandomList() -> [Person] {
        let dataStore = DataStore()
        var persons: [Person] = []
        
        let firstNames = dataStore.firstNameList.shuffled()
        let secondNames = dataStore.secondNameList.shuffled()
        let phoneNumbers = dataStore.phoneNumberList.shuffled()
        let emails = dataStore.emailList.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[index],
                secondName: secondNames[index],
                telephoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

final class DataStore {
    let firstNameList = [
        "Vlad",
        "Ilya",
        "Aleksey",
        "Aleksander",
        "Vitaly",
        "Foma",
        "Vladimir",
        "Pavel",
        "Andrei",
        "Ivan"
    ]
    
    let secondNameList = [
        "Rudenko",
        "Dolgopolov",
        "Knyazev",
        "Amirov",
        "Axenov",
        "Liubarskiy",
        "Zinin",
        "Pereverzev",
        "Akulov",
        "Samorodkin"
    ]
    
    let phoneNumberList = [
        "79017283198",
        "291570123985",
        "19853157610",
        "29012571924",
        "10123985357",
        "0129385137",
        "71353197690",
        "513413095890",
        "9823583971",
        "51359083168"
    ]
    
    let emailList = [
        "person1@swift.ru",
        "person2@swift.ru",
        "person3@swift.ru",
        "person4@swift.ru",
        "person5@swift.ru",
        "person6@swift.ru",
        "person7@swift.ru",
        "person8@swift.ru",
        "person9@swift.ru",
        "person10@swift.ru"
    ]
}
