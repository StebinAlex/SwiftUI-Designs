//
//  ExperienceCell.swift
//  FacebookClone
//
//  Created by Stebin Alex on 14/06/21.
//

import SwiftUI

struct ExperienceCell: View {
    var item: ExperienceItem
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            Text(item.name)
            Spacer()
        }
        .padding(.all, 5)
    }
}

struct ExperienceCell_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceCell(item: ExperienceItem(image: "house.fill", name: "ada"))
    }
}
