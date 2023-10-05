//
//  RipeningView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - PROPERTIES
    @State private var slideInAnimation: Bool = false
    let ripening: Ripening
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.colorGreenLight)
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(.colorAppearanceAdaptive)
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10) {
                // STAGE
                VStack(alignment: .center, spacing: 0) {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                } //: VSTACK
                .foregroundStyle(.colorGreenMedium)
                .padding(.top, 65)
                .frame(width: 180)
                // TITLE
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenMedium)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color.white, Color.colorGreenLight]), startPoint: .top, endPoint: .bottom)
                            )
                            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
                    )
                
                // DESCRIPTION
                Spacer()
                Text(ripening.description)
                    .foregroundStyle(.colorGreenDark)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                
                // RIPENESS
                Text(ripening.ripeness.uppercased())
                    .foregroundStyle(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color.colorGreenMedium, Color.colorGreenDark]), startPoint: .top, endPoint: .bottom)
                            )
                            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
                    )
                
                // INSTRUCTION
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundStyle(.colorGreenLight)
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            } //: VSTACK
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.colorGreenLight, Color.colorGreenMedium]), startPoint: .top, endPoint: .bottom)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
        } //: VSTACK
        .ignoresSafeArea(.all)
        .onAppear {
            withAnimation(.easeInOut(duration: 1)) {
                slideInAnimation.toggle()
            }
        }
    }
}

#Preview {
    RipeningView(ripening: ripeningData[1])
}
