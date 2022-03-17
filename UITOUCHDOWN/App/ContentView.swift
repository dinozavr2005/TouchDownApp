//
//  ContentView.swift
//  UITOUCHDOWN
//
//  Created by Владимир on 17.03.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    let keyWindow = UIApplication.shared.connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .compactMap({$0 as? UIWindowScene})
        .first?.windows
        .filter({$0.isKeyWindow}).first
    
    // MARK: - Body
    


    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, keyWindow?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
