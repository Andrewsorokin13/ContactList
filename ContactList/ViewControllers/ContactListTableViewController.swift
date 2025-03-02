//
//  ViewController.swift
//  ContactList
//
//  Created by Андрей Сорокин on 07.01.2025.
//

import UIKit

final class ContactListTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var persons: [Person]!
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contact = sender as? Person
        let detailsVC = segue.destination as? DetailsViewController
        
        detailsVC?.contact = contact
    }
    
    // MARK: - Table View Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: Constans.contactListCellIdentifier,
            for: indexPath
        )
        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(
            withIdentifier: Constans.showDetailsSegueIdentifier,
            sender: persons[indexPath.row]
        )
    }
}
