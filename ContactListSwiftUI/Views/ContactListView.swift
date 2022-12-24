//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Mayyura on 23.12.2022.
//

import SwiftUI

struct ContactListView: View {
    @State private var isPresent = false
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: PersonDetailsView(person: person)) {
                    PersonRowView(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
