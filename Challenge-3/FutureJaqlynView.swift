
//FutureJaqlynView.swift
//Challenge-3
//
//Created by Louis Mario Wijaya on 13/05/25.


import SwiftUI

struct FutureJaqlynView: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("Future Dreams")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 28)
                    .padding(.vertical, 10)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(FutureData.items) { item in
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
                                    Text(item.title)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    Text(item.description)
                                        .font(.caption)
                                        .padding(.top, 4)
                                    Text("Image Soure: SoraAI")
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
                
                Text("Favorite Quotes")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 28)
                
                HStack {
                    VStack {
                        Text("\"Good Artist Copy, Great Artist Steal - Unknown\"  ~Unknown")
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                            .italic(true)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 1)
                        
                        Text("Image Source: Unsplash")
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                            .italic(true)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 1)
                    }
                    
                    Image("aristotle")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                }
                .padding(.horizontal, 28)
                .padding(.bottom, 16)
                
                Text("Top Movies")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 28)
                    .padding(.vertical, 10)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(MovieData.items) { item in
                            ZStack(alignment: .bottomLeading) {
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 490)
                                    .cornerRadius(20)
                                
                                LinearGradient(
                                    gradient: Gradient(colors: [.clear, .clear, .black.opacity(0.8), .black.opacity(0.8)]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                                .frame(height: 490)
                                .cornerRadius(20)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("\(item.movieTitle) | \(item.rating) ⭐️")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    Text(item.releaseDate)
                                        .font(.caption2)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.secondary)
                                    Text(item.description)
                                        .font(.caption)
                                    Text("Image Source: IMDb")
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
                
                Text("Achievements")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 28)
                
                HStack {
                    VStack {
                        Text("\"Dalam tiga hari tanpa banyak tidur, Jaqlyn berhasil menyelesaikan 20 ilustrasi untuk klien VTubernya — bukti kegigihannya saat mengejar tenggat dan menjaga kualitas karya.\"  ~Jaqlyn")
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                            .italic(true)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 1)
                        
                        Text("Image Source: SoraAI")
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                            .italic(true)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 1)
                    }
                    
                    Image("achievements")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                }
                .padding(.horizontal, 28)
                .padding(.bottom, 16)
                
                Text("Music Choices")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 28)
                    .padding(.vertical, 10)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(MusicData.items) { item in
                            ZStack(alignment: .bottomLeading) {
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 150)
                                    .cornerRadius(20)
                                
                                LinearGradient(
                                    gradient: Gradient(colors: [.clear, .clear, .black.opacity(0.8), .black.opacity(0.8)]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                                .frame(height: 150)
                                .cornerRadius(20)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(item.musicTitle)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    Text(item.releaseYear)
                                        .font(.caption2)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.secondary)
                                    Text("Image Source: Spotify")
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
        }
    }
}

#Preview {
    FutureJaqlynView()
}
