//
//  ContentView.swift
//  Remember Me
//
//  Created by Zara on 2025-04-28.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination: careView()) {
                HStack {
                        Image(systemName: "person.circle") // Icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding(.trailing, 10) // Add spacing between the icon and text
                        
                        Text("Caregiver") // Text
                            .font(.title2)
                            .bold()
                    }
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(10)
            }
            
            NavigationLink(destination: menuView()) {
                HStack {
                        Image(systemName: "person.circle") // Icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .padding(.trailing, 10) // Add spacing between the icon and text
                        
                        Text("Client") // Text
                            .font(.title2)
                            .bold()
                    }
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(10)
            }
        }
        
        
    }

    }



#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
