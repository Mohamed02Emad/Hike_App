//
//  Item.swift
//  Hike_App
//
//  Created by Mohamed Emad on 28/11/2023.
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
