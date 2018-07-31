//
//  ContractEmployee.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

class ContractEmployee: Employee {
    var lastSwipe: Date?
    
    var name: Name
    var birthday: CreatedDate
    var address: Address
    let contractType: ContractType
    
    var areaAccess: [AreaAccess]
    var rideAccess: [RideAccess]
    var discountAccess: [DiscountAccess]
    
    init(name: Name, birthday: CreatedDate, address: Address, type: ContractType) {
        self.name = name
        self.birthday = birthday
        self.address = address
        self.contractType = type
        
        areaAccess = type.areaAccess
        rideAccess = []
        discountAccess = []
    }
    
    func swiped() {
        lastSwipe = Date()
    }
}
