import SwiftUI

struct ObjectivesView: View {
    var body: some View {
        List(sampleObjectives) { objective in
            NavigationLink(destination: Text(objective.title)) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("\(objective.recommendedOrder). \(objective.title)")
                        .font(.headline)

                    Text(objective.description)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, 6)
            }
        }
        .navigationTitle("Objectives")
    }
}



#Preview {
    NavigationStack {
        ObjectivesView()
    }
}



