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
    }
        ignoresSafeArea()
    }
}


#Preview {
    LoginView()
}
