//
//  Entrant.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

protocol Swipeable {
    var lastSwipe: Date? { get set }
    
    func swiped()
}

protocol Entrant: Dateable, Swipeable {
    var areaAccess: [AreaAccess] { get }
    var rideAccess: [RideAccess] { get set }
    var discountAccess: [DiscountAccess] { get set }
    
    func swipe<T>(withSwipeType swipe: T) -> [T]
    func birthday() -> Date
    func isBirthday() -> Bool
}

protocol Employee: Entrant, Nameable, Addressable {}

extension Date {
    static func create(day: Int, month: Int, year: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        return Calendar.current.date(from: dateComponents)!
    }
}

extension Entrant {
    func birthday() -> Date { return birthday.birthday }
    
    func isBirthday() -> Bool { return birthday.isBirthday() }
    
    func isUnderFive() -> Bool { return birthday.isUnderFive() }
    
    func swipe<T>(withSwipeType type: T) -> [T] {
        if type is AreaAccess {
            return areaAccess as! [T]
        }
        
        if type is RideAccess {
            return rideAccess as! [T]
        }
        
        if type is DiscountAccess {
            return discountAccess as! [T]
        }
        
        fatalError("Invalid type, unexpected.")
    }
}
