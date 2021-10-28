//
//  ContentView.swift
//  SimpleValidation-SwiftUI
//
//  Created by Yani Buchkov on 28.10.21.
//

import SwiftUI

struct ContentView: View {
        
    // MARK: - Main Body
    var body: some View {
        NavigationView {
            RegisterFormView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RegisterFormView: View {
    @ObservedObject
    private var registerViewModel = RegisterViewModel()

    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("Enter first name ...", text: self.$registerViewModel.firstName)
                } header: {
                    Text("First Name")
                        .font(.subheadline)
                }
                
                Section {
                    TextField("Enter last name ...", text: self.$registerViewModel.lastName)
                } header: {
                    Text("Last Name")
                        .font(.subheadline)
                }
                
                Section {
                    TextField("Password ...", text: self.$registerViewModel.password)
                } header: {
                    Text("Password")
                        .font(.subheadline)
                }
                
                Section {
                    TextField("Confirm Password ...", text: self.$registerViewModel.confirmPassword)
                } header: {
                    Text("Confirm Password")
                        .font(.subheadline)
                }
            }
            
            Button("Register") {
                self.registerViewModel.validate()
            }.padding(10)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(16.0)
            
            BrokenListView(brokenRules: self.registerViewModel.brokenRules)
        }
        .navigationTitle("Registration Form")
        .navigationBarTitleDisplayMode(.large)
    }
}
