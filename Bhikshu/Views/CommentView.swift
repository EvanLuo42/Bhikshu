//
//  Comment.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct CommentView: View {
    let comment: Comment
    
    var body: some View {
        HStack(alignment: .top) {
            Avatar(
                imageUrl: comment.user.avatarUrl,
                width: 35,
                height: 35
            )
            VStack(alignment: .leading, spacing: 5) {
                Text(comment.user.username)
                    .bold()
                Text(comment.content)
                Text("发布于 \(comment.time.formatted())")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    CommentView(
        comment: Comment(
            user: User(username: "EvanLuo42", description: "IBDP M25 Student.", avatarUrl: "https://avatars.githubusercontent.com/u/62578958?v=4"),
            content: "挺好的。",
            time: Date.now
        )
    )
}
