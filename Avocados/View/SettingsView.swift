//
//  SettingsView.swift
//  Avocados
//
//  Created by Jimmy Ghelani on 2023-10-03.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @State private var enableNotificaiton: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //HEADER
            VStack(alignment: .center, spacing: 5) {
                Image(.avocado)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenAdaptive)
            } //: VSTACK
            .padding()
            
            //FORM
            Form {
                // MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotificaiton) {
                        Text("Enable notificaiton")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                    if enableNotificaiton {
                        HStack() {
                            Text("Product").foregroundStyle(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack() {
                            Text("Compatibility").foregroundStyle(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack() {
                            Text("Developer").foregroundStyle(.gray)
                            Spacer()
                            Text("Jimmy Ghelani")
                        }
                        HStack() {
                            Text("Designer").foregroundStyle(.gray)
                            Spacer()
                            Text("SwiftUI Master Class")
                        }
                        HStack() {
                            Text("Website").foregroundStyle(.gray)
                            Spacer()
                            Text("https://github.com/ghelanijimmy")
                        }
                        HStack() {
                            Text("Version").foregroundStyle(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundStyle(.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                    
                }
            }
            
        } //: VSTACK
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
