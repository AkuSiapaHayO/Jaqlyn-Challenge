//
//  MovieModel.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 14/05/25.
//

import Foundation

struct MovieModel: Identifiable {
    let id = UUID()
    let imageName: String
    let movieTitle: String
    let description: String
    let rating: String
    let releaseDate: String
}
