//
//  HeaderModel.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import Foundation
import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
    let id = UUID()
    let image: String
    let headline: String
    let subheadline: String
}
