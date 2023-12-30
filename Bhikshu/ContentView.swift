//
//  ContentView.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tag(0)
                .tabItem {
                    Label("首页", systemImage: "house.fill")
                }
            NotificationsView()
                .tag(1)
                .tabItem {
                    Label("通知", systemImage: "bell.fill")
                }
            SettingsView()
                .tag(2)
                .tabItem {
                    Label("设置", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
