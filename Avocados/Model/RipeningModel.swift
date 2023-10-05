//
//  RipeningModel.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-04.
//

import Foundation
import SwiftUI

// MARK: - RIPENING MODEL

struct Ripening: Identifiable {
    let id = UUID()
    let image: String
    let stage: String
    let title: String
    let description: String
    let ripeness: String
    let instruction: String
}
