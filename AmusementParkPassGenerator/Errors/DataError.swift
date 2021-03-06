//
//  DataError.swift
//  AmusementParkPassGenerator
//
//  Created by Kristopher Wood on 2018-07-29.
//  Copyright © 2018 Kristopher Wood. All rights reserved.
//

enum DataError: Error {
    case missingInformation(missing: String)
    case invalidDate
    case incorrectDateFormat
    case zipIncorrectLength
    case zipNotNumber
    case stateLengthError
    case overAgeOfFive
    case longInput
}

extension DataError {
    var title: String {
        switch self {
        case .missingInformation(let description): return "\(description) Error"
        case .invalidDate: return "Invalid Date"
        case .incorrectDateFormat: return "Invalid Date Format"
        case .zipIncorrectLength: return "Zip Incorrect Length"
        case .zipNotNumber: return "Invaliz Zip"
        case .stateLengthError: return "Invalid State"
        case .overAgeOfFive: return "Too Old"
        case .longInput: return "Long Input"
        }
    }
    
    var description: String {
        switch self {
        case .missingInformation(let description): return "Please fill out the \(description) field."
        case .invalidDate: return "Date entered is incorrect."
        case .incorrectDateFormat: return "Please enter the date as MM/DD/YYYY"
        case .zipNotNumber: return "A Zip Code has to be a number."
        case .zipIncorrectLength: return "A Zip Code must be five numbers."
        case .stateLengthError: return "A state must be two characters."
        case .overAgeOfFive: return "A child must be under the age of five."
        case .longInput: return "The maximum field length is 32 characters."
        }
    }
}
