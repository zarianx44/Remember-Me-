import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Menu")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 40)

                // 4 Big Buttons with Icons
                VStack(spacing: 20) {
                    MenuButton(label: "Button 1", imageName: "star", action: {
                        print("Button 1 tapped")
                    })

                    MenuButton(label: "Button 2", imageName: "heart", action: {
                        print("Button 2 tapped")
                    })

                    MenuButton(label: "Button 3", imageName: "person", action: {
                        print("Button 3 tapped")
                    })

                    MenuButton(label: "Button 4", imageName: "gear", action: {
                        print("Button 4 tapped")
                    })
                }

                Spacer()
            }
            .padding()
        }
    }
}

// MARK: - Reusable Button View
struct MenuButton: View {
    let label: String
    let imageName: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(.leading)

                Text(label)
                    .font(.title2)
                    .bold()
                    .padding()

                Spacer()
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(Color.blue.opacity(0.2))
            .cornerRadius(15)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

