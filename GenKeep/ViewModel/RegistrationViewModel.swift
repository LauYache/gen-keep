//
//  RegistrationViewModel.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 18/02/2024.
//

import Foundation

class RegistrationViewModel: ObservableObject{
  @Published var keepers: [KeeperModel] = MockData.keepers
  @Published var email = ""
  @Published var password = ""
  
  @MainActor
  func createUser() async throws {
    //try await AuthService.shared.createUser(email: email, password: password)
  }
}
