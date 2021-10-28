//
//  BrokenListView.swift
//  SimpleValidation-SwiftUI
//
//  Created by Yani Buchkov on 28.10.21.
//

import SwiftUI

struct BrokenListView: View {
    // MARK: - Properties
    let brokenRules: [BrokenRule]
    
    var body: some View {
        List(brokenRules, id: \.id) { rule in
            Text(rule.name)
                .font(Font.headline.weight(.semibold))
            Text(rule.message)
                .font(Font.headline.weight(.light))
        }
    }
}

struct BrokenListView_Previews: PreviewProvider {
    static var previews: some View {
        BrokenListView(brokenRules: [
            BrokenRule(name: "Test", message: "Message")
        ])
    }
}


