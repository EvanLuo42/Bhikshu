//
//  QuestionViewModel.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/31.
//

import Foundation

class AnswerViewModel: ObservableObject {
    @Published private(set) var answer: Answer = Answer()
    
    func fetchAnswer(answerId: String) {
        // TODO: API Fetch
        self.answer = Answer(
            questionId: "",
            questionTitle: "为什么 GCC 要提供 Go 和 Rust 的支持？",
            answerId: "",
            questionAnswerCount: 1,
            questionFollowCount: 1,
            answerUser: User(username: "EvanLuo42", description: "IBDP M25 Student.", avatarUrl: "https://avatars.githubusercontent.com/u/62578958?v=4"),
            content: 
                """
                借用 Linux 之父 Linus Torvalds 的说法。 其他的格式在对人友好和对机器友好至少要占一样，而XML是一种罕见的对人对机器都不友好的格式

                完全不理解这种东西是怎么被设计出来的…
                """,
            time: Date.now,
            comments: [
                Comment(
                    user: User(username: "EvanLuo42", description: "IBDP M25 Student.", avatarUrl: "https://avatars.githubusercontent.com/u/62578958?v=4"),
                    content: "挺好的。",
                    time: Date.now
                )
            ]
        )
    }
}

struct Answer: Identifiable {
    var id: UUID = UUID()
    
    var questionId: String = ""
    var questionTitle: String = ""
    var answerId: String = ""
    var questionAnswerCount: Int = 0
    var questionFollowCount: Int = 0
    var answerUser: User = User()
    var content: String = ""
    var time: Date = Date()
    var comments: [Comment] = []
}

struct User: Identifiable {
    var id: UUID = UUID()
    
    var userId: String = ""
    var username: String = ""
    var description: String = ""
    var avatarUrl: String = ""
}

struct Comment: Identifiable {
    var id: UUID = UUID()
    
    var user: User = User()
    var content: String = ""
    var time: Date = Date()
}
