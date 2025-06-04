//
//  SheetTablet.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 09/05/25.
//

import SwiftUI

struct SheetTablet: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack() {
                Text("Virtual Youtubers Idol")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 28)
                    .padding(.vertical, 10)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(ArtData.items) { item in
                            ZStack(alignment: .bottomLeading) {
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 320, height: 490)
                                    .cornerRadius(20)
                                
                                LinearGradient(
                                    gradient: Gradient(colors: [.black.opacity(0.1), .black.opacity(0.2), .black.opacity(0.4), .black.opacity(0.8)]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                                .frame(width: 320, height: 490)
                                .cornerRadius(20)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Image Soure: Jaqlyn")
                                        .font(.caption2)
                                        .foregroundStyle(.secondary)
                                        .padding(.top, 8)
                                        .italic(true)
                                }
                                .foregroundColor(.white)
                                .padding()
                            }
                            .cornerRadius(20)
                            .containerRelativeFrame(.horizontal, count: 1, spacing: 16)
                            .scrollTransition { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0.5)
                                    .scaleEffect(y: phase.isIdentity ? 1 : 0.8)
                            }
                        }
                    }
                    .scrollTargetLayout()
                }
                .contentMargins(.horizontal, 28, for: .scrollContent)
                .contentMargins(.bottom, 32, for: .scrollContent)
                .scrollTargetBehavior(.viewAligned)
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Done") { dismiss() }
            }
        }
    }
}

#Preview {
    SheetTablet()
}
