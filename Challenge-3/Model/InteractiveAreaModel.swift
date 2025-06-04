//
//  InteractiveAreaModel.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 09/05/25.
//

import SwiftUI

struct InteractiveAreaModel: Identifiable {
    let id = UUID()
    let title: String
    let position: CGPoint
    let linePosition: CGPoint
    let lineRotation: Angle
    let lineHeight: CGFloat
    let buttonSize: CGSize
    let buttonPosition: CGPoint
    let onTap: () -> Void
}

//#Preview {
//    InteractiveAreaModel()
//}
