//
//  File.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

struct Name {
    let firstName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) throws {
        if firstName.isEmpty {
            throw DataError.missingInformation(missing: "First Name")
        }
        
        if lastName.isEmpty {
            throw DataError.missingInformation(missing: "Last Name")
        }
        
        self.firstName = firstName
        self.lastName = lastName
    }
}
