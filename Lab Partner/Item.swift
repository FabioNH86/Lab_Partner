//
//  Item.swift
//  Lab Partner
//
//  Created by Fabio Noriega Hernández on 19/07/24.
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
