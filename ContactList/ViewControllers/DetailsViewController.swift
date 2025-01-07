//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Андрей Сорокин on 07.01.2025.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    // MARK: - Properties
    
    var contact: Person!
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        title = contact.fullName
        phoneNumberLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
    }
}
