import SwiftUI

struct StatisticsView: View {

    var body: some View {

        Text("Statistics")
            .font(.largeTitle)
            .navigationTitle("Statistics")

    }

}





#Preview {
    NavigationStack {
        StatisticsView()
    }
}
