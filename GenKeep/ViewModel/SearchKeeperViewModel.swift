//
//  SearchKeeperViewModel.swift
//  GenKeep
//
//  Created by Laura Belen Yachelini on 21/02/2024.
//

import Foundation


import Foundation

class SearchKeeperViewModel: ObservableObject {
  @Published var keepers: [KeeperModel] = MockData.keepers

  
  init() {
  }
  
}
