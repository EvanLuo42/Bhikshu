//
//  QuestionsPreview.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct AnswerPreview: View {
    let answer: Answer
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(answer.questionTitle)
                .font(.headline)
            HStack {
                Avatar(
                    imageUrl: answer.answerUser.avatarUrl,
                    width: 20,
                    height: 20
                )
                Text(answer.answerUser.username)
                    .font(.footnote)
                
            }
            Text(answer.content)
            .lineLimit(2)
            
            Text("\(answer.questionAnswerCount) 赞同 \(answer.questionFollowCount) 回复")
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    AnswerPreview(
        answer: Answer(
            questionId: "",
            questionTitle: "为什么 GCC 要提供 Go 和 Rust 的支持？",
            answerId: "",
            questionAnswerCount: 1,
            questionFollowCount: 1,
            answerUser: User(username: "EvanLuo42", description: "IBDP M25 Student.", avatarUrl: "https://avatars.githubusercontent.com/u/62578958?v=4"),
            content: "ABC",
            time: Date.now,
            comments: [
                Comment(
                    user: User(username: "EvanLuo42", description: "IBDP M25 Student.", avatarUrl: "https://avatars.githubusercontent.com/u/62578958?v=4"),
                    content: "挺好的。",
                    time: Date.now
                )
            ]
        )
    )
}
