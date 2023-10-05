//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-03.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    let ripeningStages: [Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {

            VStack(alignment: .center) {
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) {stage in
                        RipeningView(ripening: stage)
                    } //: LOOP
                } //: HSTACK
                .padding(.horizontal, 25)
            } //: VSTACK

        } //: SCROLL VIEW
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RipeningStagesView()
}
