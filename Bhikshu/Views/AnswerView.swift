//
//  QuestionView.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct AnswerView: View {
    let answerId: String
    
    @ObservedObject var viewModel = AnswerViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    NavigationLink(destination: {}) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(viewModel.answer.questionTitle)
                                    .font(.headline)
                            }
                            Image(systemName: "chevron.right")
                        }
                    }.buttonStyle(PlainButtonStyle())
                    Text("\(viewModel.answer.questionAnswerCount) 个回答 · \(viewModel.answer.questionFollowCount) 个关注")
                        .font(.subheadline)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        NavigationLink(destination: {}) {
                            HStack {
                                Avatar(
                                    imageUrl: viewModel.answer.answerUser.avatarUrl,
                                    width: 35,
                                    height: 35
                                )
                                VStack(alignment: .leading) {
                                    Text(viewModel.answer.answerUser.username)
                                        .font(.subheadline)
                                        .bold()
                                    Text(viewModel.answer.answerUser.description)
                                        .font(.footnote)
                                }
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        
                        Text(viewModel.answer.content)
                        
                        Text("发布于 \(viewModel.answer.time.formatted())")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        
                        Divider()
                    }
                    CommentsList(comments: viewModel.answer.comments)
                }
                Spacer()
            }
        }
        .onAppear {
            viewModel.fetchAnswer(answerId: "")
        }
        .padding()
    }
}

#Preview {
    AnswerView(answerId: "testId")
}
