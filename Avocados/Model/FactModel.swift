//
//  FactModel.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import Foundation

// MARK: - FACT MODEL

struct Fact: Identifiable {
    let id = UUID()
    let image: String
    let content: String
}
