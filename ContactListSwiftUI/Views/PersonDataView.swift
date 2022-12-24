//
//  RowView.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Mayyura on 24.12.2022.
//

import SwiftUI

struct PersonDataView: View {
    let imageName: String
    let personContact: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(personContact)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDataView(imageName: "person", personContact: "number")
    }
}
