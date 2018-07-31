//
//  MainBar.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

enum MainBarSelection: Int {
    case guest = 0
    case employee = 1
    case manager = 2
    case contract = 3
    case vendor = 4
}

extension MainBarSelection {
    var secondaryValues: [String] {
        switch self {
        case .guest: return ["Child", "Adult", "VIP", "Senior", "Season"]
        case .employee: return ["Food Services", "Ride Services", "Maintenance"]
        case .manager: return []
        case .contract: return ["1001", "1002", "1003", "2001", "2002"]
        case .vendor: return ["Acme", "Orkin", "Fedex", "NW Electrical"]
        }
    }
}
