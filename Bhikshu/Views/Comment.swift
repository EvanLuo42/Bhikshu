//
//  Comment.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct Comment: View {
    var body: some View {
        HStack(alignment: .top) {
            Avatar(
                imageUrl: "https://avatars.githubusercontent.com/u/62578958?v=4",
                width: 35,
                height: 35
            )
            VStack(alignment: .leading, spacing: 5) {
                Text("EvanLuo42")
                    .bold()
                Text("挺好的。")
                Text("发布于 2023-12-30 22:06")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    Comment()
}
