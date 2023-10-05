//
//  AvocadosView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-03.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image(.avocado)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 240, height: 240)
                    .shadow(color: .colorBlackTransparentDark, radius: 12, x: 0, y: 8)
                    .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                    .opacity(self.pulsateAnimation ? 1 : 0.9)
                VStack {
                    Text("Avocados".uppercased())
                        .font(.system(size: 42, weight: .bold, design: .serif))
                        .foregroundStyle(.white)
                        .padding()
                    .shadow(color: .colorBlackTransparentDark, radius: 4, x: 0, y: 4)
                    Text("""
    Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
    """)
                    .font(.system(.headline, design: .serif))
                    .foregroundStyle(.colorGreenLight)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
                } //: VSTACK
                .padding()
                Spacer()
            } //: VSTACK
        } //: ZSTACK
        .background(
            Image(.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .ignoresSafeArea()
//        .ignoresSafeArea(.all, edges: Edge.Set.top)
//        .padding(.bottom, 10)
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                self.pulsateAnimation.toggle()
            }
        }
    }
}

#Preview {
    AvocadosView()
}
