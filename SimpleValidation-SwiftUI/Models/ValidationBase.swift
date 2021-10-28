//
//  ValidationBase.swift
//  SimpleValidation-SwiftUI
//
//  Created by Yani Buchkov on 28.10.21.
//

import Foundation

protocol Validator: ValidationBase {
    func validate()
}

extension Validator {
    func addBrokerRule(_ rule: BrokenRule) {
        brokenRules.append(rule)
    }
    
    func clearValidation() {
        brokenRules = []
    }
}

class ValidationBase: ObservableObject {
    @Published
    fileprivate (set) var brokenRules: [BrokenRule] = [BrokenRule]()
}

struct BrokenRule: Identifiable {
    let id = UUID()
    let name: String
    let message: String
}
