//
//  CommentsView.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct CommentsList: View {
    let comments: [Comment]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("评论 \(comments.count)")
                .font(.headline)
            ForEach(comments) { comment in
                CommentView(comment: comment)
                Divider()
            }
        }
    }
}

#Preview {
    CommentsList(
        comments: [
            Comment(
                user: User(username: "EvanLuo42", description: "IBDP M25 Student.", avatarUrl: "https://avatars.githubusercontent.com/u/62578958?v=4"),
                content: "挺好的。",
                time: Date.now
            )
        ]
    )
}
