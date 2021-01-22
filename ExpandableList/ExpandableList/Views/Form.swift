//
//  Form.swift
//  ExpandableList
//
//  Created by Daniel Watson on 21/01/2021.
//

import SwiftUI

struct FormView: View {
    
    @State var isExpanded = true
    
    var body: some View {
        Form {
            Section {
                DisclosureGroup(isExpanded: $isExpanded) {
                    TextField("First Name", text: .constant(""))
                    TextField("Last Name", text: .constant(""))
                    TextField("Email Name", text: .constant(""))
                    DatePicker("BirthDate", selection: .constant(Date()))
                } label: {
                    Text("Personal Information")
                }
            }
            Section {
                DisclosureGroup {
                    Toggle("Push", isOn: .constant(true))
                    Toggle("SMS", isOn: .constant(true))
                    Toggle("Email", isOn: .constant(true))
                } label: {
                    Text("Notification Preferences")
                }
            }
        }
    }
}

struct Form_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
