//
//  LoginView.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 18/02/2024.
//

import SwiftUI

struct LoginView: View{
    @State var email: String
    @State var password: String
    var body: some View{
        
        NavigationStack{
            ZStack{
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 16){
                    
                    Text("Welcome")
                        .font(.largeTitle)
                        .foregroundStyle(Color.customPurple)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Please enter your account here")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    
                    VStack(spacing: 20){
                        HStack{
                            
                            Image(systemName: "envelope")
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray)
                            
                            TextField("Email", text: $email)
                                .font(.subheadline)
                                .padding(12)
                                .cornerRadius(12)
                        }
                        .modifier(TextViewModifier())
                        
                        HStack{
                            
                            Image(systemName: "envelope")
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray)
                            
                            SecureField("Password", text: $password)
                                .font(.subheadline)
                                .padding(12)
                                .cornerRadius(12)
                            
                            Button{
                                
                                //mostrar contrasena
                            }label: {
                                Image(systemName: "eye")
                                    .foregroundColor(.gray)
                            }
                        }
                        .modifier(TextViewModifier())
                        
                        HStack{
                            Spacer()
                            
                            Button(action:{
                                
                                
                            },label: {
                                Text("Forgot password?")
                                    .foregroundStyle(.gray)
                            })
                        }
                        .padding(.trailing, 24)
                    }
                    
                    //Login button
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Text("Login")
                            .foregroundStyle(.white)
                            .modifier(RoundedBotton(color: .customLilac, letterColor: .customPurple))
                                
                        })
                        
                
                        NavigationLink {
                            QuickStartView()
                        } label: {
                            Text("Quick start")
                            .modifier(RoundedBotton(color: .customPurple, letterColor: .white))
                        }
                    }
                
                }
            }
        }
        }
}

    

#Preview {
  LoginView(email: "", password: "")
}
