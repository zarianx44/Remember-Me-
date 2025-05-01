//
//  LoginView.swift
//  Remember Me
//
//  Created by Zara on 2025-04-30.
//

import Foundation
import SwiftUI

struct LoginView: View{
    var body: some View{
        ZStack{
            Color.black
            RoundedRectangle(cornerRadius:30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading , endPoint: .bottomTrailing))
                .frame(width:1000, height:400)
                .rotationEffect(.degrees(135))
                .offset(y: -350)
            
            VStack(spacing:20){
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x:-100, y: -100)
                

            }
                }
        ignoresSafeArea()
    }
}


#Preview {
    LoginView()
}
