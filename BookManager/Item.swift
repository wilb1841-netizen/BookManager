//
//  Item.swift
//  BookManager
//
//  Created by Wilbert Baker on 1/7/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
        let p = print("just for test")
    }
}
