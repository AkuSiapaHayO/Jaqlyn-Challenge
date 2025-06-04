//
//  SheetAnimeFavorite.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 09/05/25.
//

import SwiftUI

struct SheetAnimeFavorite: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack() {
                Text("Anime Picks")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 28)
                    .padding(.vertical, 10)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(AnimeData.items) { item in
                            ZStack(alignment: .bottomLeading) {
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 490)
                                    .cornerRadius(20)
                                
                                LinearGradient(
                                    gradient: Gradient(colors: [.clear, .clear, .black.opacity(0.6), .black.opacity(0.8)]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                                .frame(height: 490)
                                .cornerRadius(20)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("\(item.animeTitle)   \(item.rating) ⭐️")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    Text(item.releaseYear)
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                        .fontWeight(.bold)
                                    Text(item.description)
                                        .font(.caption)
                                        .padding(.top, 4)
                                    Text("Image Soure: IMDb")
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
    }
}

#Preview {
    SheetAnimeFavorite()
}
