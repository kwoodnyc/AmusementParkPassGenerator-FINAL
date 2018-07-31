//
//  Address.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

struct Address {
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: String
    
    init(streetAddress: String, city: String, state: String, zipCode: String) throws {
        if streetAddress.isEmpty {
            throw DataError.missingInformation(missing: "Street Address")
        }
        
        if city.isEmpty {
            throw DataError.missingInformation(missing: "City")
        }
        
        if state.isEmpty {
            throw DataError.missingInformation(missing: "State")
        }
        
        if state.count != 2 {
            throw DataError.stateLengthError
        }
        
        if zipCode.isEmpty {
            throw DataError.missingInformation(missing: "Zip Code")
        }
        
        if zipCode.count != 5 { throw DataError.zipIncorrectLength }
        
        guard Int(zipCode) != nil else { throw DataError.zipNotNumber }
        
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}
