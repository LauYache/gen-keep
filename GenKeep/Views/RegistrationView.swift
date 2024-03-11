//
//  RegistrationView.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 18/02/2024.
//

import SwiftUI



struct RegistrationView: View{
  
  @StateObject var viewModel = RegistrationViewModel()

    @Environment (\.dismiss) private var dismiss
    var isPasswordValidLenght:Bool {
        
      return viewModel.password.count >= 6
    }
    
    var isPasswordWithNumber:Bool {
        
        return viewModel.password.contains(where: { $0.isNumber})
    }
    
    var isPasswordIsValid:Bool {
        
        return isPasswordWithNumber &&
        isPasswordValidLenght

    }
    
   @State var isShowingPassword = false
    var body: some View{
        
        NavigationStack{
            ZStack{
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 16){
                    
                    Text("Welcome!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.customPurple)
                    Text("Please enter your account here")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    
                    VStack(spacing: 20){
                        HStack{
                            
                            Image(systemName: "envelope")
                                .fontWeight(.semibold)
                            
                          TextField("Email", text: $viewModel.email)
                                .font(.subheadline)
                                .padding(12)
                                .cornerRadius(12)
                        }
                        .modifier(TextViewModifier())
                        
                        HStack{
                            
                            Image(systemName: "envelope")
                                .fontWeight(.semibold)
                            
                            if isShowingPassword {
                                TextField("Password", text: $viewModel.password)
                                    .font(.subheadline)
                                    .padding(12)
                                    .cornerRadius(12)
                                
                            } else {
                                
                                
                                SecureField("Password", text: $viewModel.password)
                                    .font(.subheadline)
                                    .padding(12)
                                    .cornerRadius(12)
                            }
                            
                                                      
                            Button{
                                isShowingPassword.toggle()
                            }label: {
                                Image(systemName: isShowingPassword ? "eye" : "eye.slash")
                                    .foregroundColor(.gray)
                            }
                        }
                        .modifier(TextViewModifier())
                        
                        VStack(spacing: 16){
                            Text("Your password must contain:")
                            VStack{
                                
                                HStack{
                                    Image(systemName: isPasswordValidLenght ? "checkmark.circle.fill" : "checkmark.circle")
                                        .foregroundColor(isPasswordValidLenght ? .green : . gray)
                                    Text("At least 6 characters")
                                }
                                HStack{
                                    Image(systemName: isPasswordWithNumber ? "checkmark.circle.fill" : "checkmark.circle")
                                        .foregroundColor(isPasswordWithNumber ? .green : . gray)
                                    Text("Contains a number")
                                }
                            }
                            
                        }
                        
                    }
                    
                    //Login button
                    VStack{
                        Button(action: {
                            //Calls the VM and execute createUser method
                          Task{
                            
                            try await viewModel.createUser
                          }
                        }, label: {
                            Text("Sign up")
                            .modifier(RoundedBotton(color: .customLilac, letterColor: .customPurple))
                        })
                        .opacity(isPasswordIsValid ? 1 : 0.6)
                        .disabled(!isPasswordIsValid)
                        
                        Button(action: {
                            //regresar al login
                            dismiss()
                        }, label: {
                            HStack{
                                Text("Already have an account?")
                                Text("Sign up")
                                .foregroundColor(.customPurple)
                                    .fontWeight(.semibold)
                            }
                            .foregroundColor(.black)
                            .font(.footnote)
                        })
                    }
                }
            }
        }
    }
}




#Preview {
  RegistrationView()
}
