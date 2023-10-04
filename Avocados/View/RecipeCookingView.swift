//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            } //: HSTACK
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            } //: HSTACK
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            } //: HSTACK
        } //: HSTACK
        .font(.footnote)
        .foregroundStyle(.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0])
}
