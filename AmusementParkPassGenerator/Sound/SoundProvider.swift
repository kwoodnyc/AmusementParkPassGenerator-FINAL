//
//  SoundProvidor.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation
import AudioToolbox

class SoundProvider {
    var grantedSoundID: SystemSoundID = 0
    var deniedSoundID: SystemSoundID = 1
    
    init() { loadSounds() }
    
    func loadSounds() {
        var soundPath = Bundle.main.path(forResource: "AccessGranted", ofType: "wav")
        var soundUrl = URL(fileURLWithPath: soundPath!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &grantedSoundID)
        
        soundPath = Bundle.main.path(forResource: "AccessDenied", ofType: "wav")
        soundUrl = URL(fileURLWithPath: soundPath!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &deniedSoundID)
    }
    
    func playGrantedSound() {
        AudioServicesPlaySystemSound(grantedSoundID)
    }
    
    func playDeniedSound() {
        AudioServicesPlaySystemSound(deniedSoundID)
    }
}
