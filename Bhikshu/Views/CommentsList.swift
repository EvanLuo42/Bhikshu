//
//  CommentsView.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct CommentsList: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("评论 6")
                .font(.headline)
            Comment()
            Divider()
            Comment()
        }
    }
}

#Preview {
    CommentsList()
}
