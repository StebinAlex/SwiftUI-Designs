//
//  Extensions.swift
//  FacebookClone
//
//  Created by Stebin Alex on 16/06/21.
//

import SwiftUI

extension View {
    func setBorderEasily(cornerRadius: CGFloat, width: CGFloat, color: Color) -> some View {
        self.cornerRadius(cornerRadius)
            .padding(width)
            .background(color)
            .cornerRadius(cornerRadius + width)
    }
}
