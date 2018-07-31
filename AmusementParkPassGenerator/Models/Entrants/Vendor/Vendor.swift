//
//  Vendor.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

class Vendor: Entrant, Nameable {
    var lastSwipe: Date?
    
    var name: Name
    var birthday: CreatedDate
    let vendorType: VendorType
    
    var visitDate: Date
    
    var areaAccess: [AreaAccess]
    var rideAccess: [RideAccess]
    var discountAccess: [DiscountAccess]
    
    init(name: Name, birthday: CreatedDate, type: VendorType) {
        self.name = name
        self.birthday = birthday
        self.vendorType = type
        
        visitDate = Date()
        
        areaAccess = type.areaAccess
        rideAccess = []
        discountAccess = []
    }
    
    func swiped() {
        lastSwipe = Date()
    }
}
