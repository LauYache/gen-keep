//
//  RoundedBotton.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 18/02/2024.
//

import Foundation
import SwiftUI

struct RoundedBotton: ViewModifier{
    
    let color: Color
    let letterColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(width: 200, height: 50)
    
            .foregroundColor(letterColor)
            .background(color)
            .cornerRadius(34)
            .padding(.horizontal)
        
    }
}
