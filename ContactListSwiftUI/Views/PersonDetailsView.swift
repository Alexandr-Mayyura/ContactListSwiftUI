//
//  PersonDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Mayyura on 24.12.2022.
//

import SwiftUI

struct PersonDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 110)
                Spacer()
            }
            PersonDataView(
                imageName: "phone",
                personContact: person.phoneNumber
            )
            PersonDataView(
                imageName: "tray",
                personContact: person.email
            )
        }
        .navigationTitle(person.fullName)
    }
}

struct PersonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailsView(person: Person(
            id: 1,
            name: "Name",
            surname: "Surname",
            email: "ccc@ccc.com",
            phoneNumber: "98983232"
        ))
    }
}
