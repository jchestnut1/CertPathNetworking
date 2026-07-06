import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var authManager: AuthManager

    var body: some View {
        VStack(alignment: .leading, spacing: 24) {

            if authManager.isGuest {
                Text("Welcome!")
                    .font(.title2)
                    .fontWeight(.semibold)

                Text("Guest Mode • Progress will not be saved")
                    .font(.subheadline)
                    .foregroundStyle(.orange)
            } else if let user = authManager.currentUser {
                Text("Welcome back, \(user.username)")
                    .font(.title2)
                    .fontWeight(.semibold)
            } else {
                Text("Welcome to CertPath")
                    .font(.title2)
                    .fontWeight(.semibold)
            }

            VStack(spacing: 14) {
                NavigationLink("Objectives", destination: ObjectivesView())
                    .frame(maxWidth: .infinity)

                NavigationLink("Exam Prep", destination: ExamPrepView())
                    .frame(maxWidth: .infinity)

                NavigationLink("Statistics", destination: StatisticsView())
                    .frame(maxWidth: .infinity)

                NavigationLink("Settings", destination: SettingsView())
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
        .navigationTitle("Dashboard")
    }
}

#Preview {
    NavigationStack {
        DashboardView()
            .environmentObject(AuthManager())
    }
}
