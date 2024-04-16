//
//  DetailedContactViewController.swift
//  ContactList
//
//  Created by Влад Руденко on 15.04.2024.
//

import UIKit

class DetailedContactViewController: UIViewController {
    
    //MARK: - Properties
    var person: Person = Person(
        firstName: "",
        secondName: "",
        telephoneNumber: "",
        email: ""
    )
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpUIElements()
        addUIElementsOnScreen()
        doUIConstarins()
        self.navigationItem.title = "\(person.firstName) \(person.secondName)"
    }
    
    //MARK: - UI Elements
    private var labelStack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let numberLable: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let emailLable: UILabel = {
        let label = UILabel()
        return label
    }()
}
    //MARK: - UI Functions
    private extension DetailedContactViewController {
        func setUpUIElements() {
            view.backgroundColor = .systemBackground
            [numberLable, emailLable].forEach {
                $0.textAlignment = .left
                $0.numberOfLines = 1
                $0.font = .systemFont(ofSize: 15)
                $0.translatesAutoresizingMaskIntoConstraints = false
            }
            numberLable.text = "Phone: \(person.telephoneNumber)"
            emailLable.text = "Email: \(person.email)"
        }
        
        func addUIElementsOnScreen() {
            view.addSubview(labelStack)
            [numberLable, emailLable].forEach {
                labelStack.addArrangedSubview($0)
            }
        }
        
        func doUIConstarins() {
            NSLayoutConstraint.activate([
                labelStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                labelStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                labelStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                labelStack.heightAnchor.constraint(equalToConstant: 60)
            ])
        }
    }
