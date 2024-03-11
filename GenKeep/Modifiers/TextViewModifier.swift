//
//  TextViewModifier.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 18/02/2024.
//

import Foundation

import SwiftUI
struct TextViewModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .overlay (
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color(.systemGray2), lineWidth: 1)
                    .frame(height: 40)
                    .frame(maxWidth: .infinity)
                     .padding(.horizontal, -20)
                    
            )
            .padding(.horizontal, 25)
    }
}

