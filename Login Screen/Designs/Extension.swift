//
//  Extension.swift
//  Designs
//
//  Created by Stebin Alex on 11/06/21.
//

import SwiftUI

extension Shape {
    func fillGradient(with colors: [Color]) -> some View {
        self.fill(
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

extension View {
    func bgGradient(with colors: [Color]) -> some View {
        self.background(
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
        )
    }
}

extension View {
    func selfSizeMask<T: View>(_ mask: T) -> some View {
        ZStack {
            self.opacity(0)
            mask.mask(self)
        }.fixedSize()
    }
}

extension TextField {
    func makeBeautiful() -> some View {
        self.font(.title2)
            .frame(height: 50)
            .padding(.leading, 30)
            .bgGradient(with: [Color(#colorLiteral(red: 0.4158543348, green: 0.01288643107, blue: 0.8695722222, alpha: 1)).opacity(0.2), Color(#colorLiteral(red: 0.8801349998, green: 0.07142720371, blue: 0.3457604349, alpha: 1)).opacity(0.2)])
            .clipShape(Capsule())
    }
}
