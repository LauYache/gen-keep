
/*import FirebaseAuth
 
 
 class AuthService {
 @Published var userSession: FirebaseAuth.User?
 static let shared = AuthService()
 init() {
 self.userSession = Auth.auth().currentUser
 }
 @MainActor
 func createUser (email: String, password: String)
 async throws {
 do {
 let result = try await Auth.auth() .createUser(withEmail: email, password: password)
 self.userSession = result.user
 print ("Debug: usuario creado: \(result.user.uid)")
 } catch {
 print ("Debug: error \(error.localizedDescription)")
 }
 }
 }
 
 */
