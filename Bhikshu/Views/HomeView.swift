//
//  HomeView.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel = HomeViewModel()
    
    @State private var selectedCategory = Category.Recommend
    @State private var searchQuestion = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.answers) { answer in
                    NavigationLink(destination: { AnswerView(answerId: answer.answerId) }) {
                        AnswerPreview(answer: answer)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(selectedCategory.rawValue)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Picker("", selection: $selectedCategory) {
                    ForEach(Category.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }.onChange(of: selectedCategory) {
                    viewModel.fetchAnswers(category: selectedCategory)
                }
            }
            .toolbar {
                Button(action: {}) {
                    Label("", systemImage: "plus.circle.fill")
                }
            }
        }
        .onAppear {
            viewModel.fetchAnswers(category: selectedCategory)
        }
        .refreshable {
            viewModel.fetchAnswers(category: selectedCategory)
        }
        .searchable(text: $searchQuestion)
    }
}

#Preview {
    HomeView()
}
