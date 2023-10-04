//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe
    @State private var pulsate: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    //TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.colorGreenAdaptive)
                        .padding(.top, 10)
                    
                    //RATING
                    RecipeRatingView(recipe: recipe)
                    
                    //COOKING
                    RecipeCookingView(recipe: recipe)
                    
                    //INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    
                    //INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) {item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                                .foregroundStyle(.colorGreenAdaptive)
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        } //: VSTACK
                    } //: LOOP
                } //: GROUP
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            } //: VSTACK
        } //: SCROLL VIEW
        .ignoresSafeArea(.all)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundStyle(.white)
                            .shadow(radius: 4)
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                } //: VSTACK
            } //: HSTACK
        )
        .onAppear() {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                pulsate.toggle()
            }
        }
    }
}

#Preview {
    RecipeDetailView(recipe: recipesData[0])
}
