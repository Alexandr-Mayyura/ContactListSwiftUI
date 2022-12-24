//
//  PersonRowView.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Mayyura on 24.12.2022.
//

import SwiftUI

struct PersonRowView: View {
    @State private var isPresent = false
    let person: Person
    
    var body: some View {
        Button(action: { isPresent.toggle() }) {
            Text(person.fullName)
        }
    }
}

struct PersonRowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonRowView(person: Person.getContactList().last!)
    }
}
