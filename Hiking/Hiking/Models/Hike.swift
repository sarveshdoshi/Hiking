//
//  Hike.swift
//  Hiking
//
//  Created by Sarvesh Doshi on 18/08/24.
//

import Foundation

struct Hike: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
