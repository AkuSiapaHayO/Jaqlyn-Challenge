//
//  GameModel.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 15/05/25.
//

import Foundation

struct GameModel: Identifiable {
    let id = UUID()
    let imageName: String
    let gameTitle: String
    let description: String
    let releaseYear: String
}
