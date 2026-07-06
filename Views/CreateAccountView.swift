import SwiftUI

struct CreateAccountView: View {
    @EnvironmentObject var authManager: AuthManager

    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showError = false
    @State private var errorMessage = ""
    @State private var accountCreated = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Create Account")
                .font(.largeTitle)
                .fontWeight(.bold)

            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(.roundedBorder)

            if showError {
                Text(errorMessage)
                    .foregroundStyle(.red)
            }

            Button("Create Account") {
                if password != confirmPassword {
                    errorMessage = "Passwords do not match."
                    showError = true
                    return
                }

                if authManager.createAccount(username: username, password: password) {
                    accountCreated = true
                } else {
                    errorMessage = "Username already exists or fields are empty."
                    showError = true
                }
            }
            .buttonStyle(.borderedProminent)

            NavigationLink("", destination: DashboardView(), isActive: $accountCreated)
                .hidden()
        }
        .padding()
        .navigationTitle("Create Account")
    }
}

#Preview {
    NavigationStack {
        CreateAccountView()
            .environmentObject(AuthManager())
    }
}
