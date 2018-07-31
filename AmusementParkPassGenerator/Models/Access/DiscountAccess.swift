//
//  DiscountAccess.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

typealias Percent = Int

enum DiscountAccess: GenericAccess {
    case foodDiscount(discount: Percent)
    case merchandiseDiscount(discount: Percent)

}

extension DiscountAccess {
    func name() -> String {
        switch self {
        case .foodDiscount(let discount): return "\(discount)% Food Discount"
        case .merchandiseDiscount(let discount): return "\(discount)% Merchandise Discount"
        }
    }
    
    func stringName() -> String {
        switch self {
        case .foodDiscount(_): return "FoodDiscount"
        case .merchandiseDiscount(_): return "MerchandiseDiscount"
        }
    }
}
