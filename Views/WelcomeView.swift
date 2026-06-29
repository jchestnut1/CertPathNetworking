import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.blue, .gray, .blue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack(spacing: 30) {
                    Spacer()

                    Image(systemName: "network")
                        .font(.system(size: 64))
                        .foregroundStyle(.white)

                    VStack(spacing: 10) {
                        Text("CertPath")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)

                        Text("Networking")
                            .font(.title2)
                            .foregroundStyle(.white.opacity(0.9))
                    }

                    Text("Study smarter. Track progress. Build networking confidence.")
                        .font(.body)
                        .foregroundStyle(.white.opacity(0.95))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 36)
                        .padding(.top, 8)

                    Spacer()

                    VStack(spacing: 14) {
                        NavigationLink(destination: DashboardView()) {
                            Text("Login")
                                .frame(maxWidth: .infinity)
                                .tint(.blue)
                        }
                        .buttonStyle(.borderedProminent)

                        NavigationLink(destination: DashboardView()) {
                            Text("Create Account")
                                .frame(maxWidth: .infinity)
                                .tint(.blue)
                        }
                        .buttonStyle(.borderedProminent)

                        NavigationLink(destination: DashboardView()) {
                            Text("Continue as Guest")
                                .frame(maxWidth: .infinity)
                                .tint(.blue)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal, 40)

                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
