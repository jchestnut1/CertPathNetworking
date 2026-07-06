import Foundation
import Combine

class AuthManager: ObservableObject {
    @Published var users: [User] = []
    @Published var currentUser: User?
    @Published var isGuest: Bool = false
    
    func createAccount(username: String, password: String) -> Bool {
        guard !username.isEmpty, !password.isEmpty else { return false }
        
        let userExists = users.contains { $0.username.lowercased() == username.lowercased() }
        
        if userExists {
            return false
        }
        
        let newUser = User(username: username, password: password)
        users.append(newUser)
        currentUser = newUser
        isGuest = false
        return true
    }
    
    func login(username: String, password: String) -> Bool {
        if let user = users.first(where: { $0.username == username && $0.password == password}) {
            currentUser = user
            isGuest = false
            return true
        }
        
        return false
    }
    
    func continueAsGuest() {
        currentUser = nil
        isGuest = true
    }
    
    func logout() {
        currentUser = nil
        isGuest = false
    }
}
