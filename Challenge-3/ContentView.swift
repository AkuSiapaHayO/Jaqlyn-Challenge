import SwiftUI

struct ContentView: View {
    @State private var goToFutureJaqlyn = false
    @State private var showTablet = false
    @State private var showHeart = false
    @State private var showBoyfriendPhoto = false
    @State private var showGameController = false
    @State private var showAnimeFavorite = false
    @State private var showVtuberFavorite = false

    
    var areas: [InteractiveAreaModel] {
        [
            InteractiveAreaModel(
                title: "More",
                position: CGPoint(x: 216, y: 395.5),
                linePosition: CGPoint(x: 200, y: 411),
                lineRotation: .degrees(10),
                lineHeight: 20,
                buttonSize: CGSize(width: 140, height: 160),
                buttonPosition: CGPoint(x: 220, y: 470),
                onTap: { goToFutureJaqlyn = true }
            ),
            InteractiveAreaModel(
                title: "Artist's Life",
                position: CGPoint(x: 305, y: 682),
                linePosition: CGPoint(x: 461, y: 555),
                lineRotation: .degrees(30),
                lineHeight: 50,
                buttonSize: CGSize(width: 100, height: 120),
                buttonPosition: CGPoint(x: 320, y: 630),
                onTap: { showTablet = true }
            ),
            InteractiveAreaModel(
                title: "Heart",
                position: CGPoint(x: 352, y: 435.4),
                linePosition: CGPoint(x: 360, y: 481),
                lineRotation: .degrees(-10),
                lineHeight: 20,
                buttonSize: CGSize(width: 68, height: 130),
                buttonPosition: CGPoint(x: 359, y: 495),
                onTap: { showHeart = true }
            ),
            InteractiveAreaModel(
                title: "Gamer Mode",
                position: CGPoint(x: 76.2, y: 608),
                linePosition: CGPoint(x: -45, y: 487),
                lineRotation: .degrees(-30),
                lineHeight: 40,
                buttonSize: CGSize(width: 100, height: 75),
                buttonPosition: CGPoint(x: 52, y: 578),
                onTap: { showGameController = true }
            ),
            InteractiveAreaModel(
                title: "Love Life",
                position: CGPoint(x: 57, y: 376),
                linePosition: CGPoint(x: 30, y: 422),
                lineRotation: .degrees(10),
                lineHeight: 20,
                buttonSize: CGSize(width: 83, height: 133),
                buttonPosition: CGPoint(x: 42, y: 437),
                onTap: { showBoyfriendPhoto = true }
            ),
            InteractiveAreaModel(
                title: "Anime World",
                position: CGPoint(x: 88, y: 299),
                linePosition: CGPoint(x: 120, y: 231),
                lineRotation: .degrees(-30),
                lineHeight: 30,
                buttonSize: CGSize(width: 124, height: 270),
                buttonPosition: CGPoint(x: 62, y: 171),
                onTap: { showAnimeFavorite = true }
            ),
            InteractiveAreaModel(
                title: "Vtuber Idol",
                position: CGPoint(x: 231, y: 296),
                linePosition: CGPoint(x: 250, y: 302),
                lineRotation: .degrees(-30),
                lineHeight: 30,
                buttonSize: CGSize(width: 127, height: 250),
                buttonPosition: CGPoint(x: 198, y: 178),
                onTap: { showVtuberFavorite = true }
            )
        ]
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("2")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                IdleAnimationLayer()
                
                ForEach(areas) { area in
                    InteractiveArea(
                        title: area.title,
                        position: area.position,
                        linePosition: area.linePosition,
                        lineRotation: area.lineRotation,
                        lineHeight: area.lineHeight,
                        buttonSize: area.buttonSize,
                        buttonPosition: area.buttonPosition,
                        action: area.onTap
                    )
                }
            }
            .navigationDestination(isPresented: $goToFutureJaqlyn) {
                FutureJaqlynView()
            }
            
            .sheet(isPresented: $showGameController) {
                SheetGameController()
                    .presentationDetents([.fraction(0.77)])
            }
            .sheet(isPresented: $showTablet) {
                SheetTablet()
                    .presentationDetents([.fraction(0.77)])
            }
            .sheet(isPresented: $showBoyfriendPhoto) {
                SheetBoyfriendPhoto()
                    .presentationDetents([.fraction(0.77)])
            }
            .sheet(isPresented: $showHeart) {
                SheetHeart()
                    .presentationDetents([.fraction(0.77)])
            }
            .sheet(isPresented: $showAnimeFavorite) {
                SheetAnimeFavorite()
                    .presentationDetents([.fraction(0.77)])
            }
            .sheet(isPresented: $showVtuberFavorite) {
                SheetVtuberFavorite()
                    .presentationDetents([.fraction(0.77)])
            }
        }
    }
}

#Preview {
    ContentView()
}

