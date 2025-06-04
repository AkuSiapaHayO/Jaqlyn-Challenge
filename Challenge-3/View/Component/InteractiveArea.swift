//
//  InteractiveArea.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 09/05/25.
//

import SwiftUI

struct InteractiveArea: View {
    let title: String
    let position: CGPoint
    let linePosition: CGPoint
    let lineRotation: Angle
    let lineHeight: CGFloat
    let buttonSize: CGSize
    let buttonPosition: CGPoint
    let action: () -> Void

    var body: some View {
        Group {
            Text(title)
                .position(position)
                .shadow(color: .white, radius: 2)
                .foregroundColor(.white)
                .font(.footnote)
                .fontWeight(.thin)
                .underline(true, color: .white)

            Rectangle()
                .fill(Color.white)
                .frame(width: 0.5, height: lineHeight)
                .shadow(color: .white, radius: 1)
                .position(linePosition)
                .rotationEffect(lineRotation)

            Button(action: action) {
                Color.clear
                    .frame(width: buttonSize.width, height: buttonSize.height)
            }
            .position(buttonPosition)
        }
    }
}

//#Preview {
//    InteractiveArea()
//}
