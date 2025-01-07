//
//  ContactService.swift
//  ContactList
//
//  Created by Андрей Сорокин on 07.01.2025.
//

import Foundation

final class DataStore {
    
    // MARK: - Singleton
    
    static let shared = DataStore()
    
    private init() {}
    
    // MARK: - Private Properties
    
    private let names = [
        "Andrey",
        "Sergey",
        "Vladimir",
        "Igor",
        "Alex",
        "Nikolay",
        "Pavel",
        "Mikhail",
        "Dmitry",
        "Roman"
    ]
    
    private let surnames = [
        "Sorokin",
        "Ivanov",
        "Petrov",
        "Sidorov",
        "Kuznetsov",
        "Popov",
        "Smirnov",
        "Volkov",
        "Fedorov",
        "Novikov"
    ]
    
    private let emails = [
        "andrey.sorokin@gmail.com",
        "sergey.ivanov@gmail.com",
        "vladimir.petrov@gmail.com",
        "igor.sidorov@gmail.com",
        "alex.kuznetsov@gmail.com",
        "nikolay.popov@gmail.com",
        "pavel.smirnov@gmail.com",
        "mikhail.volkov@gmail.com",
        "dmitry.fedorov@gmail.com",
        "roman.novikov@gmail.com"
    ]
    
    private let phoneNumbers = [
        "+79012345670",
        "+79012345671",
        "+79012345672",
        "+79012345673",
        "+79012345674",
        "+79012345675",
        "+79012345676",
        "+79012345677",
        "+79012345678",
        "+79012345679"
    ]
    
    // MARK: - Methods
    
    func generateContacts(count: Int = 10) -> [Person] {
        var contacts: [Person] = []
        
        for _ in 0..<count {
            let randomName = names.randomElement() ?? "Unknown"
            let randomSurname = surnames.randomElement() ?? "Unknown"
            let fullName = "\(randomName) \(randomSurname)"
            
            let randomEmail = emails.randomElement() ?? "unknown@gmail.com"
            let randomPhone = phoneNumbers.randomElement() ?? "+79000000000"
            
            let contact = Person(
                fullName: fullName,
                phoneNumber: randomPhone,
                email: randomEmail
            )
            contacts.append(contact)
        }
        
        return contacts
    }
}
