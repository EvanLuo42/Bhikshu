//
//  QuestionsPreview.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct QuestionsPreview: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("为什么 GCC 要提供 Go 和 Rust 的支持？")
                .font(.headline)
            HStack {
                Avatar(
                    imageUrl: "https://avatars.githubusercontent.com/u/62578958?v=4",
                    width: 20,
                    height: 20
                )
                Text("EvanLuo42")
                    .font(.footnote)
                
            }
            Text(
                """
                借用 Linux 之父 Linus Torvalds 的说法。 其他的格式在对人友好和对机器友好至少要占一样，而XML是一种罕见的对人对机器都不友好的格式

                完全不理解这种东西是怎么被设计出来的…
                """
            )
            .lineLimit(2)
            
            Text("1 赞同 1 回复")
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    QuestionsPreview()
}
