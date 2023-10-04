//
//  RecipeModel.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import Foundation
import SwiftUI

// MARK: - RECIPE MODEL

struct Recipe: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let rating: Int
    let serves: Int
    let preparation: Int
    let cooking: Int
    let instructions: [String]
    let ingredients: [String]
}
