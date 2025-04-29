//
//  careView.swift
//  Remember Me
//
//  Created by Zara on 2025-04-29.
//

import Foundation

import SwiftUI

struct careView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Menu")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 40)

                // 4 Big Buttons with Icons
                VStack(spacing: 20) {
                    menuButton(label: "Button 1", imageName: "star", action: {
                        print("Button 1 tapped")
                    })

                    menuButton(label: "Button 2", imageName: "heart", action: {
                        print("Button 2 tapped")
                    })

                    menuButton(label: "Button 3", imageName: "person", action: {
                        print("Button 3 tapped")
                    })

                    menuButton(label: "Button 4", imageName: "gear", action: {
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


#Preview {
    menuView()
}
