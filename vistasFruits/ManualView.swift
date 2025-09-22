import SwiftUI

struct ManualView: View {
    var body: some View {
        ZStack {
            // Background color
            Color(red: 0.96, green: 0.95, blue: 0.85)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                // Broccoli title button
                Button(action: {
                    print("Botón de brócoli presionado")
                }) {
                    Text("BRÓCOLI")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(
                                    gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.8)]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                ))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.red, lineWidth: 3)
                                )
                        )
                }
                .padding(.top, 100)
                
                Spacer()
                
                // Large broccoli image
                Image("broccoli_character")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280, height: 280)
                
                Spacer()
                
                // Dog character and description side by side
                HStack(alignment: .center, spacing: 20) {
                    // Dog character (bigger and on the left)
                    Image("hero_pup_character")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 160)
                    
                    // Description text (on the right)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("¡Guau! El brócoli tiene súper vitaminas que me hacen fuerte!")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                        
                        Text("¡Además me da energía para volar por el cielo todo el día!")
                            .font(.system(size: 13, weight: .medium))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 30)
                
                // Power bars section
                VStack(spacing: 15) {
                    // Strength bar
                    PowerBar(label: "Fuerza", value: 0.7, color: .red)
                    
                    // Speed bar
                    PowerBar(label: "Velocidad", value: 0.9, color: .orange)
                    
                    // Super Fly bar
                    PowerBar(label: "Súper Vuelo", value: 0.8, color: .green)
                }
                .padding(.horizontal, 40)
                
                // Bottom navigation
                HStack(spacing: 60) {
                    // Left arrow
                    Button(action: {
                        print("Elemento anterior")
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                            .foregroundColor(.red)
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 3)
                            )
                    }
                    
                    // Home button
                    Button(action: {
                        print("Botón de inicio presionado")
                    }) {
                        Image("home_button")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                    }
                    
                    // Right arrow
                    Button(action: {
                        print("Siguiente elemento")
                    }) {
                        Image(systemName: "chevron.right")
                            .font(.title2)
                            .foregroundColor(.red)
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 3)
                            )
                    }
                }
                .padding(.bottom, 40)
            }
        }
    }
}

// Custom power bar component
struct PowerBar: View {
    let label: String
    let value: Double // 0.0 to 1.0
    let color: Color
    
    var body: some View {
        HStack {
            Text(label)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.black)
                .frame(width: 80, alignment: .leading)
            
            // Power bar background
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray.opacity(0.3))
                .frame(height: 20)
                .overlay(
                    // Power bar fill
                    HStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [color, color.opacity(0.7)]),
                                startPoint: .leading,
                                endPoint: .trailing
                            ))
                            .frame(width: nil)
                        Spacer()
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .scaleEffect(x: value, y: 1, anchor: .leading)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black.opacity(0.3), lineWidth: 1)
                )
            
            // Power value
            Text("\(Int(value * 100))")
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.black)
                .frame(width: 30)
        }
    }
}

#Preview {
    ManualView()
}
