import SwiftUI

struct ExamPrepView: View {

    var body: some View {

        Text("Exam Prep")
            .font(.largeTitle)
            .navigationTitle("Exam Prep")

    }

}






#Preview {
    NavigationStack {
        ExamPrepView()
    }
}

