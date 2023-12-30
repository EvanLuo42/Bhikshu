//
//  Item.swift
//  Bhikshu
//
//  Created by Evan Luo on 2023/12/30.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
