//
//  Avatar.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import SwiftUI

struct Avatar: View {
    var imageUrl: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { image in
            image
                .image?
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: height)
                .clipShape(Circle())
        }
    }
}

#Preview {
    Avatar(imageUrl: "https://avatars.githubusercontent.com/u/62578958?v=4", width: 100, height: 100)
}
