
import Foundation

class LoginViewModel: ObservableObject {
  @Published var keepers: [KeeperModel] = MockData.keepers
  @Published var isDial = false
  @Published var isHovered = false
  
  init() {
  }
  
  func onTapDialPolice() {}
}
