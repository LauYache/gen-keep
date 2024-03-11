//
//  KeepedTabViewModel.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 21/02/2024.
//

import Foundation

import Foundation

class KeepedViewModel: ObservableObject {
  @Published var keepers: [KeeperModel] = MockData.keepers
  @Published var isDial = false
  @Published var isHovered = false
  
  init() {
  }
  
  func onTapDialPolice() {}
}
