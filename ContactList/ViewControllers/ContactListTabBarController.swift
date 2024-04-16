//
//  ContactListTabBarController.swift
//  ContactList
//
//  Created by Влад Руденко on 13.04.2024.
//

import UIKit

final class ContactListTabBarController: UITabBarController {

    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVC()
    }
    
    private func setUpVC() {
        let startContactListVC = StartContactListController()
        let secondContactListVC = SecondContactListController()
        
        startContactListVC.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(systemName: "person.circle"), selectedImage: nil)
        secondContactListVC.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(systemName: "person.circle.fill"), selectedImage: nil)
        
        viewControllers = [startContactListVC, secondContactListVC]
        self.navigationItem.title = "Persons List"
        
        let personList = Person.makeRandomList()
        startContactListVC.personList = personList
        secondContactListVC.personList = personList
    }
}
