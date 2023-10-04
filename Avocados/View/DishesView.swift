//
//  DishesView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                // 1st Column
                HStack() {
                    Image(.iconToasts)
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                } //: HSTACK
                Divider()
                HStack() {
                    Image(.iconTacos)
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                } //: HSTACK
                Divider()
                HStack() {
                    Image(.iconSalads)
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                } //: HSTACK
                Divider()
                HStack() {
                    Image(.iconHalfavo)
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                } //: HSTACK
            } //: VSTACK
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                } //: HSTACK
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                } //: HSTACK
            } //: VSTACK
            
            VStack(alignment: .trailing, spacing: 4) {
                // 2nd Column
                HStack() {
                    Text("Guacamole")
                    Spacer()
                    Image(.iconGuacamole)
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                Divider()
                HStack() {
                    Text("Sandwiches")
                    Spacer()
                    Image(.iconSandwiches)
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                Divider()
                HStack() {
                    Text("Soup")
                    Spacer()
                    Image(.iconSoup)
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                Divider()
                HStack() {
                    Text("Smoothie")
                    Spacer()
                    Image(.iconGuacamole)
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
            } //: VSTACK
        } //: HSTACK
        .font(.system(.callout, design: .serif))
        .foregroundStyle(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

#Preview {
    DishesView()
}
