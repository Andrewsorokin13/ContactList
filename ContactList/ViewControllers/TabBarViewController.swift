//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Андрей Сорокин on 07.01.2025.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
    }
    
    // MARK: - Private Methods
    
    private func setViewControllers() {
        let persons = DataStore.shared.generateContacts()
        
        let contactsListVC = viewControllers?.first as? ContactListTableViewController
        let contactSectionListVC = viewControllers?.last as? ContactSectionTableViewController
        
        contactsListVC?.persons = persons
        contactSectionListVC?.persons = persons
    }
}
