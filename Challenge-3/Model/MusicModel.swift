//
//  MusicModel.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 14/05/25.
//

import Foundation

struct MusicModel: Identifiable {
    let id = UUID()
    let imageName: String
    let musicTitle: String
    let releaseYear: String
}
