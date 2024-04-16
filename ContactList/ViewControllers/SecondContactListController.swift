//
//  SecondContactListController.swift
//  ContactList
//
//  Created by Влад Руденко on 13.04.2024.
//

import UIKit

class SecondContactListController: UITableViewController {
    
    //MARK: - Properties
    var personList: [Person] = []
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    //MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(personList[section].firstName) \(personList[section].secondName)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            config.image = UIImage(systemName: "phone.fill")
            config.text = "\(personList[indexPath.section].telephoneNumber)"
        default:
            config.image = UIImage(systemName: "tray.fill")
            config.text = "\(personList[indexPath.section].email)"
        }
        cell.contentConfiguration = config
        
        return cell
    }
    
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    
    
}
