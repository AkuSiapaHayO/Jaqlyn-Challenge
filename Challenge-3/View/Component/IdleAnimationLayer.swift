//
//  IdleAnimationLayer.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 09/05/25.
//

import SwiftUI

struct Particle: Identifiable {
    let id = UUID()
    let x: CGFloat
    let startY: CGFloat
    let endY: CGFloat
    let size: CGFloat
    let duration: Double
}

struct IdleAnimationLayer: View {
    @State private var animate = false
    private let particles: [Particle]

    init() {
        let screenSize = UIScreen.main.bounds
        self.particles = (0..<100).map { _ in
            Particle(
                x: CGFloat.random(in: 0...screenSize.width),
                startY: CGFloat.random(in: 0...screenSize.height),
                endY: CGFloat.random(in: 0...screenSize.height),
                size: CGFloat.random(in: 20...40),
                duration: Double.random(in: 6...12)
            )
        }
    }

    var body: some View {
        GeometryReader { _ in
            ZStack {
                ForEach(particles) { particle in
                    Circle()
                        .fill(Color.white.opacity(0.15))
                        .frame(width: particle.size, height: particle.size)
                        .position(x: particle.x, y: animate ? particle.endY : particle.startY)
                        .blur(radius: 2.5)
                        .shadow(color: .white.opacity(0.8), radius: 10)
                        .animation(.linear(duration: particle.duration).repeatForever(autoreverses: true), value: animate)
                }
            }
            .onAppear { animate = true }
        }
        .allowsHitTesting(false)
    }
}


//#Preview {
//    IdleAnimationLayer()
//}
