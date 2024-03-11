
import Foundation
import SwiftUI

///Do a enum with keepers/nonKeepers

struct KeeperModel: Codable, Identifiable, Hashable {
    
    let id: Int
    let name: String
    var profileImage: String
    var gender: String
    var address: String
     var mobileNumber: String
    
    init(id: Int, name: String, profileImage: String, gender: String, adress: String, mobileNumber: String) {
        self.id = id
        self.name = name
        self.profileImage = profileImage
        self.gender = gender
        self.address = adress
        self.mobileNumber = mobileNumber
        
    }
}
