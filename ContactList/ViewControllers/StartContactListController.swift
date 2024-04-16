//
//  ViewController.swift
//  ContactList
//
//  Created by Влад Руденко on 13.04.2024.
//

import UIKit

final class StartContactListController: UITableViewController {
    
    //MARK: - Properties
    var personList: [Person] = []
    
    //MARK: - viewDidLoad and viewWillAppear
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(personList[indexPath.row].firstName) \(personList[indexPath.row].secondName)"
        return cell
    }
    
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailedVC = DetailedContactViewController()
        detailedVC.person = personList[indexPath.row]
        show(detailedVC, sender: self)
    }
    


}

