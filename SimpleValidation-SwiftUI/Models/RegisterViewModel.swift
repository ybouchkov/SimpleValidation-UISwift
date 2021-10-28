//
//  RegisterViewModel.swift
//  SimpleValidation-SwiftUI
//
//  Created by Yani Buchkov on 28.10.21.
//

import Foundation

class RegisterViewModel: ValidationBase {
    var firstName: String = ""
    var lastName: String = ""
    var password: String = ""
    var confirmPassword: String = ""
}

extension RegisterViewModel: Validator {
    func validate() {
        // Clears out any existing broken rules and then performs validation
        clearValidation()
        
        if firstName.isEmpty {
            addBrokerRule(BrokenRule(name: "Empty firstName", message: "First name field should not be empty"))
        }
        
        if lastName.isEmpty {
            addBrokerRule(BrokenRule(name: "Empty lastName", message: "Last name field should not be empty"))
        }
        
        if password.isEmpty {
            addBrokerRule(BrokenRule(name: "Empty password", message: "Password field should not be empty"))
        }
        
        if confirmPassword.isEmpty {
            addBrokerRule(BrokenRule(name: "Empty confirm password", message: "Confirm password field should not be empty"))
        }
        
        if password != confirmPassword {
            addBrokerRule(BrokenRule(name: "Different password", message: "Password should be equal to confirm password field"))
        }
    }
}


