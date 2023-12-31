//
//  HomeViewModel.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/31.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published private(set) var answers: [Answer] = []
    
    func fetchAnswers(category: Category) {
        switch category {
        case .Recommend:
            fetchRecommendAnswers()
        case .Popular:
            fetchPopularAnswers()
        }
    }
    
    func fetchRecommendAnswers() {
        answers = [
            Answer(
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
            ),
            Answer(
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
        ]
    }
    
    func fetchPopularAnswers() {
        
    }
}

enum Category: String, CaseIterable {
    case Recommend = "推荐"
    case Popular = "热门"
}
