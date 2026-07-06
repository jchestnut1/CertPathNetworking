import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    var username: String
    var password: String
    var completedobjectives: [String]
    var quizScores: [Double]
    var studyStreak: Int
    var strengths: [String]
    var weaknesses: [String]
    
    init(username: String, password: String) {
        self.id = UUID()
        self.username = username
        self.password = password
        self.completedobjectives = []
        self.quizScores = []
        self.studyStreak = 0
        self.strengths = []
        self.weaknesses = []
    }
}

