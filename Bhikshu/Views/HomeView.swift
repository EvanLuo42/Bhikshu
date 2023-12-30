//
//  HomeView.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct HomeView: View {
    let categories = ["推荐", "热门"]
    @State private var selectedCategory = "推荐"
    @State private var searchQuestion = ""
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: { QuestionView() }) {
                    QuestionsPreview()
                }
                NavigationLink(destination: { Text("ABC") }) {
                    QuestionsPreview()
                }
            }
            .listStyle(.plain)
            .navigationTitle(selectedCategory)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Picker("", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) {
                        Text($0)
                    }
                }
            }
            .toolbar {
                Button(action: {}) {
                    Label("", systemImage: "plus.circle.fill")
                }
            }
        }.searchable(text: $searchQuestion)
    }
}

#Preview {
    HomeView()
}
