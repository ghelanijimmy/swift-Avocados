//
//  AppView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-03.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            Group {
                AvocadosView()
                    .tabItem {
                        Image(.tabiconBranch)
                        Text("Avocados")
                    }
                ContentView()
                    .tabItem {
                        Image(.tabiconBook)
                        Text("Recipes")
                    }
                RipeningStagesView()
                    .tabItem {
                        Image(.tabiconAvocado)
                        Text("Ripening")
                    }
                SettingsView()
                    .tabItem {
                        Image(.tabiconSettings)
                        Text("Settings")
                    }
            }
        } //: TABVIEW
        .ignoresSafeArea(.all)
        .tint(.primary)
        .onAppear(perform: {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        })
    }
}

#Preview {
    AppView()
}
