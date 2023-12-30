//
//  QuestionView.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    NavigationLink(destination: {}) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("为什么 GCC 要提供 Go 和 Rust 的支持？")
                                    .font(.headline)
                            }
                            Image(systemName: "chevron.right")
                        }
                    }.buttonStyle(PlainButtonStyle())
                    Text("3 个回答 · 10 个关注")
                        .font(.subheadline)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        NavigationLink(destination: {}) {
                            HStack {
                                Avatar(
                                    imageUrl: "https://avatars.githubusercontent.com/u/62578958?v=4",
                                    width: 35,
                                    height: 35
                                )
                                VStack(alignment: .leading) {
                                    Text("EvanLuo42")
                                        .font(.subheadline)
                                        .bold()
                                    Text("Description")
                                        .font(.footnote)
                                }
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        
                        Text(
                            """
                            借用 Linux 之父 Linus Torvalds 的说法。 其他的格式在对人友好和对机器友好至少要占一样，而XML是一种罕见的对人对机器都不友好的格式

                            完全不理解这种东西是怎么被设计出来的…
                            """
                        )
                        
                        Text("发布于 2023-12-30 22:06")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        
                        Divider()
                    }
                    CommentsList()
                }
                Spacer()
            }
        }.padding()
    }
}

#Preview {
    QuestionView()
}
