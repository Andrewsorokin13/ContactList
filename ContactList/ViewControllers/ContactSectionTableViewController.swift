//
//  ContactSectionTableViewController.swift
//  ContactList
//
//  Created by Андрей Сорокин on 08.01.2025.
//

import UIKit

final class ContactSectionTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var persons: [Person]!
    
    // MARK: - Table View Data Source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: Constans.contactSectionCellIdentifier,
            for: indexPath
        )
        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: Constans.phoneIconImageName)
            content.text = contact.phoneNumber
        default:
            content.image = UIImage(systemName: Constans.emailIconImageName)
            content.text = contact.email
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        nil
    }
}
