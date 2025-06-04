//
//  BoyfriendModel.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 15/05/25.
//

import Foundation

struct BoyfriendModel: Identifiable {
    let id = UUID()
    let imageName: String
    let moment: String
    let description: String
    let location: String
    let date: String
}
