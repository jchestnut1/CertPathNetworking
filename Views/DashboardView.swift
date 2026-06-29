import SwiftUI


struct DashboardView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Learning Dashboard")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Choose where you want to begin.")
                .foregroundStyle(.secondary)
            
            NavigationLink("Objectives", destination: ObjectivesView())
                .buttonStyle(.bordered)
            
            NavigationLink("Exam Prep", destination: ExamPrepView())
                .buttonStyle(.bordered)
            
            NavigationLink("Statistics", destination: StatisticsView())
                .buttonStyle(.bordered)
            
            NavigationLink("Settings", destination: SettingsView())
                .buttonStyle(.bordered)
            
        }
        .padding()
        .navigationTitle("Dashboard")

        .padding()
        .navigationTitle("Dashboard")
    }
}

#Preview {
    NavigationStack {
        DashboardView()
    }
}
