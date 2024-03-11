//
//  File.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 10/02/2024.
//

import Foundation
import SwiftUI



struct TitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
           .font(.system(size: 64))
            .fontWeight(.bold)
            .padding(.top, 100)
            .foregroundStyle(.customPurple)
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(TitleStyle())
    }
}

extension Color {
    static let customGreen2 = Color(red: 80/255, green: 163/255, blue: 121/255)
}

extension Color {
  static let customOrange = Color(red: 1.0, green: 0.467, blue: 0.302)
}
extension Color {
  static let customLilac2 = Color(red: 234/255, green: 248/255, blue: 213/255)
}



extension Color {
  static let customMint = Color(red: 234/255, green: 248/255, blue: 213/255)
}

