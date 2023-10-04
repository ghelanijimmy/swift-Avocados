//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe
    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(.title.weight(.light))
                                .foregroundStyle(.white)
                                .imageScale(.small)
                            .shadow(color: .colorBlackTransparentLight, radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            Spacer()
                        } //: VSTACK
                    } //: HSTACK
                ) //: OVERLAY
            
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenMedium)
                    .lineLimit(1)
                
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(.gray)
                    .italic()
                
                // RATES
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                RecipeCookingView(recipe: recipe)
                
            } //: VSTACK
            .padding()
            .padding(.bottom, 12)
        } //: VSTACK
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 0)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModal = true
        }
        .sheet(isPresented: $showModal, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[0])
}
