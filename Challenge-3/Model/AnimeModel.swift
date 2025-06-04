//
//  AnimeModel.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 15/05/25.
//

import Foundation

struct AnimeModel: Identifiable {
    let id = UUID()
    let imageName: String
    let animeTitle: String
    let description: String
    let rating: String
    let releaseYear: String
}
