import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var authManager: AuthManager
    
    @State private var username = ""
    @State private var password = ""
    @State private var showError = false
    @State private var loginSuccess = false
    
    var body: some View {
        VStack(spacing: 20) {
          Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            if showError {
                Text("Invalid username or password.")
                    .foregroundStyle(.red)
            }
            
            Button("Login") {
                if authManager.login(username: username, password: password) {
                    loginSuccess = true
                } else {
                    showError = true
                }
            }
            .buttonStyle(.borderedProminent)
            
            NavigationLink("", destination: DashboardView(), isActive: $loginSuccess)
                .hidden()
        }
        .padding()
        .navigationTitle("Login")
    }
}

#Preview {
    NavigationStack {
        LoginView()
            .environmentObject(AuthManager())
    }
}

