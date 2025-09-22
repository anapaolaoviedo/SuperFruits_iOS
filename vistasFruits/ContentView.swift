import SwiftUI

struct vistasFruits: View {
    var body: some View {
        ZStack {
            // Background city image
            Image("city_background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                // Game title with glow effect
                VStack(spacing: 5) {
                    Text("SUPER")
                        .font(.system(size: 48, weight: .black, design: .rounded))
                        .foregroundColor(.cyan)
                        .shadow(color: .red, radius: 8, x: 0, y: 0)
                        .shadow(color: .red.opacity(0.8), radius: 15, x: 0, y: 0)
                        .shadow(color: .white, radius: 3, x: 0, y: 0)
                    
                    Text("FLAPPY PUP")
                        .font(.system(size: 42, weight: .black, design: .rounded))
                        .foregroundColor(.red)
                        .shadow(color: .orange, radius: 8, x: 0, y: 0)
                        .shadow(color: .red.opacity(0.8), radius: 15, x: 0, y: 0)
                        .shadow(color: .white, radius: 3, x: 0, y: 0)
                }
                .padding(.top, 20)
                
                Spacer()
                    .frame(height: 10)  // Smaller spacer
                    .frame(height: 20)  // Smaller spacer to make room
                
                // Super hero dog character
                Image("hero_pup_character")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)  // MUCH bigger!
                    .padding(.bottom, 10)
                
                Spacer()
                
                // Menu buttons
                HStack(spacing: 80) {  // More spacing
                    // Home/Menu button
                    Button(action: {
                        // Handle home button action
                        print("Home button tapped")
                    }) {
                        Image("home_button")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)  // MUCH bigger buttons
                    }
                    
                    // Play button
                    Button(action: {
                        // Handle play button action
                        print("Play button tapped")
                    }) {
                        Image("play_button")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)  // MUCH bigger buttons
                    }
                }
                .padding(.bottom, 40)
            }
        }
    }
}

#Preview {
    vistasFruits()
}
