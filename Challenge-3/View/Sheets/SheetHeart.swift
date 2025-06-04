//
//  SheetHeart.swift
//  Challenge-3
//
//  Created by Louis Mario Wijaya on 09/05/25.
//

import SwiftUI
import SwiftUI

struct SheetHeart: View {
    @Environment(\.dismiss) var dismiss
    @State private var isBeating = false

    var body: some View {
        NavigationStack {
            VStack {
                Image("heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .scaleEffect(isBeating ? 1.03 : 0.97)
                    .animation(
                        .easeInOut(duration: 0.9).repeatForever(autoreverses: true),
                        value: isBeating
                    )
                    .onAppear {
                        isBeating = true
                    }
                    .padding(.top)
                
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 180)
                        .foregroundStyle(.gray.opacity(0.05))
                        .cornerRadius(20)
                    
                    Text("Jaqlyn has a sensitive heart condition that makes her prone to sudden spikes in heart rate when she's physically active or emotionally overwhelmed. Although she hasn’t received a formal diagnosis yet, she’s cautious with her energy and avoids intense excitement. It’s a daily reminder for her to balance passion with self-care, especially during creative work.")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                        .padding()
                        .padding(.horizontal, 24)
                }

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
    SheetHeart()
}

