
import Foundation

class HelpProfileViewModel: ObservableObject {
  @Published var keepers: [KeeperModel] = MockData.keepers
  @Published var isDial = false
  @Published var isHovered = false
  
  init() {
  }
  
  func onTapDialPolice() {}
}
