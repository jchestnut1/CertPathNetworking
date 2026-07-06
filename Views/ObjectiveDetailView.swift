import SwiftUI

struct ObjectiveDetailView: View {
    let objective: Objective
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(objective.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(objective.description)
                .foregroundStyle(.secondary)
            
            Divider()
            
            NavigationLink("Study Guide", destination: Text("Study Guide for \(objective.title)"))
                .buttonStyle(.borderedProminent)
            
            NavigationLink("Flashcards", destination: Text("Flashcards for \(objective.title)"))
                .buttonStyle(.borderedProminent)
            
            NavigationLink("Quiz", destination: Text("Quiz for \(objective.title)"))
                .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Objective")
    }
}


#Preview {
    NavigationStack {
        ObjectiveDetailView(objective: sampleObjectives[0])
    }
}

