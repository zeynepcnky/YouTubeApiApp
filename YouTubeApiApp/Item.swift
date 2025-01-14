//
//  Item.swift
//  YouTubeApiApp
//
//  Created by Zeynep Cankaya on 9.08.2024.
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
