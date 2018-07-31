//
//  Swiper.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

class Swiper {
    static let secondsBetweenSwipes = 5
    
    static func allowTimeSwipeFor(_ entrant: Entrant) -> Bool {
        guard let lastSwipe = entrant.lastSwipe else {
            return true
        }
        
        let currentDate = Date()
        let elapsedSeconds = Int(currentDate.timeIntervalSince(lastSwipe))
        
        return elapsedSeconds > Swiper.secondsBetweenSwipes
    }
}
