//
//  SearchKeeperView.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 18/02/2024.
//

import SwiftUI

import SwiftUI


struct SearchKeeperView: View {
  
  @State private var isCalling = false
  
  var body: some View {
    
    ZStack{
      Image("background")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
      VStack(spacing: 30) {
        Text("Your Keeper is here")
          .font(.largeTitle)
          .foregroundStyle(.black)
        Image("Renato")
          .frame(width: 400)
          .clipShape(Circle())
          .shadow(radius: 20)
        Text("Renato")
          .font(.largeTitle)
          .foregroundStyle(.black)
          .bold()
        
        
        HStack{
          
          VStack{
            
            Button(action: {
              
            }, label: {
              Image(systemName: "phone.fill")
                .foregroundStyle(.black)
                .font(.title)
                .animation(.bouncy, value: isCalling)
                .onHover(perform: { hovering in
                  isCalling.toggle()
                })
            })
            .frame(width: 60, height: 60)
            .background(Color.white)
            .clipShape(Circle())
            .padding()
            Text("Cancel")
              .foregroundStyle(.black)
              .font(.title2)
          }
          
          VStack{
            Button(action: {
              
              
            }, label: {
              Image(systemName: "message")
                .foregroundStyle(.black)
                .font(.title)
                .animation(.bouncy, value: isCalling)
                .onHover(perform: { hovering in
                  isCalling.toggle()
                })
            })
            .frame(width: 60, height: 60)
            .background(Color.white)
            .clipShape(Circle())
            .padding()
            
            Text("Chat")
              .foregroundStyle(.black)
              .font(.title2)
            
          }
          
          VStack{
            Button(action: {
              
              
            }, label: {
              Image(systemName: "phone.down.fill")
                .foregroundStyle(.black)
                .font(.title)
                .animation(.bouncy, value: isCalling)
                .onHover(perform: { hovering in
                  isCalling.toggle()
                })
            })
            .frame(width: 60, height: 60)
            .background(Color.white)
            .clipShape(Circle())
            .padding()
            Text("Cancel")
              .foregroundStyle(.black)
              .font(.title2)
          }
        }
        
      }
    }
  }
}



#Preview {
  SearchKeeperView()
}
