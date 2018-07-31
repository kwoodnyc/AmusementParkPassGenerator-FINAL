//
//  DataRandomizer.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-26.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

import Foundation

extension ViewController {
    
    func populateData() {
        var dobYear = "1990"
        
        if selectionHandler.mainBarSelection == .guest {
            switch selectionHandler.secondarySelection {
            case 0: dobYear = "2016"
            case 3: dobYear = "1942"
            default: break
            }
        }
        
        dobTextField.text = "12/05/\(dobYear)"
        ssnTextField.text = "007-89-9090"
        
        if firstNameTextField.isEnabled {
            firstNameTextField.text = "Steve"
            lastNameTextField.text = "Rogers"
        }
        
        if streetAddressTextField.isEnabled {
            streetAddressTextField.text = "110 Pioneer St"
            cityTextField.text = "Brooklyn"
            stateTextField.text = "NY"
            zipTextField.text = "11231"
        }
    }
}
