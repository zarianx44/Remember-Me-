import SwiftUI

struct MenuView: View {
    let buttons: [(label: String, imageName: String, destination: AnyView)] = [
        ("About Me", "user", AnyView(Screen1())),
        ("Lost", "information", AnyView(Screen2())),
        ("Task", "task", AnyView(Screen3())),
        ("Item", "lostitems", AnyView(Screen4()))
    ]
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Menu")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)

                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(0..<buttons.count, id: \.self) { index in
                        let button = buttons[index]
                        
                        NavigationLink(destination: button.destination) {
                            VStack(spacing: 10) {
                                Image(button.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.blue)
                                
                                Text(button.label)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                            }
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color.blue.opacity(0.15))
                            .cornerRadius(20)
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
        }
    }
}


// MARK: - Reusable Button View
struct MenuButton: View {
    let label: String
    let imageName: String

    var body: some View {
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
}

#Preview {
    MenuView()
}
// ... all your MenuView and MenuButton code above

#Preview {
    MenuView()
}

// Add this after the preview:
struct Screen1: View {
    var body: some View {
        Text("Screen 1")
            .font(.largeTitle)
    }
}

struct Screen2: View {
    var body: some View {
        Text("Screen 2")
            .font(.largeTitle)
    }
}

struct Screen3: View {
    var body: some View {
        Text("Screen 3")
            .font(.largeTitle)
    }
}

struct Screen4: View {
    var body: some View {
        Text("Screen 4")
            .font(.largeTitle)
    }
}


