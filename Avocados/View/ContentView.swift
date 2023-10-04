//
//  ContentView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-03.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let headers: [Header] = headersData
    let facts: [Fact] = factsData
    
    // MARK: - BODY
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) {header in
                            HeaderView(header: header)
                        }
                    }
                }
                
                // MARK: - DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - FACTS
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60, content: {
                        ForEach(facts) {fact in
                            FactsView(fact: fact)
                        }
                    }) //: HSTACK
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                    
                }
                
                // MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                } //: VSTACK
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VSTACK
        } //: SCROLLVIEW
        .ignoresSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundStyle(.colorGreenAdaptive)
            .padding(8)
    }
}

#Preview {
    ContentView()
}
