import Foundation

struct StudySection: Identifiable {
    let id = UUID()
    let title: String
    let summary: String
    let content: String
}
