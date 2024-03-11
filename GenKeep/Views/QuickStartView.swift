//
//  QuickStartView.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 19/02/2024.
//

import SwiftUI

struct QuickStartView: View {
  
  @State private var name = ""
    var body: some View {
      NavigationStack{
        ZStack{
          Image("background")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
          
          VStack(spacing: 16){
            
            Text("What's you name?")
              .foregroundStyle(Color.customPurple)
              .font(.largeTitle)
              .fontWeight(.bold)
            Text("Please enter your name")
              .font(.footnote)
              .foregroundStyle(.gray)
            
            VStack(spacing: 20){
              HStack{
                
                Image(systemName: "person")
                  .foregroundStyle(.gray)
                  .fontWeight(.semibold)
                
                TextField("Name", text: $name)
                  .font(.subheadline)
                  .padding(12)
                  .cornerRadius(12)
              }
              .modifier(TextViewModifier())
              
            }

              NavigationLink {
                ProfileRegistrationView(viewModel: ProfileRegistrationViewModel())
              } label: {
                Text("Start")
                  .modifier(RoundedBotton(color: .customLilac, letterColor: .customPurple))
              }
            }
            
          }
        }
      }
    }



#Preview {
    QuickStartView()
}
