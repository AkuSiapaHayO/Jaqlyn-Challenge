//
//  VtuberModel.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 15/05/25.
//

import Foundation

struct VtuberModel: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let description: String
    let debutYear: String
}
