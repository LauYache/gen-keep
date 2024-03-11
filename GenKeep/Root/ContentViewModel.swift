import Foundation
import Combine
//import Firebase

class ContentViewModel: ObservableObject {
    @Published var keepers: [KeeperModel] = MockData.keepers
  
  ///Received the user sesion from Firebaseauth
  
  /*
  @Published var userSession : FirebaseAuth.User?
  private var cancelables  = Set<AnyCancellable>()
  
  init(){
    
    setupSuscribers()
  }
  
  private func setupSubscribers(){
    AuthService.shared.$userSession.sink { [weak self] userSession in
      self?.userSession = userSession
    }
        .store(in: &cancelables)
    }
   */
  }

