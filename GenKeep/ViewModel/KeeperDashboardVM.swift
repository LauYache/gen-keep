
import Foundation

class KeeperDashboardVM: ObservableObject {
  @Published var keepers: [KeeperModel] = MockData.keepers
  @Published var name = "Lali"

}
