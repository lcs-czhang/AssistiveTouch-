//
//  Tutorial.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-06.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink {
                    TranslationView()
                } label: {
                    Text("Translation")
                }
                
                NavigationLink {
                    MagnifyingView()
                } label: {
                    Text("Magnifying")
                }
                
                NavigationLink {
                    WeatherReportView()
                } label: {
                    Text("Weather Report")
                }
                
                NavigationLink {
                    CalculatorView()
                } label: {
                    Text("Calculator")
                }
                
                NavigationLink {
                    PaintingView()
                } label: {
                    Text("Painting")
                }
                
                NavigationLink {
                    VaultView()
                } label: {
                    Text("Vault")
                }
                
            }
        }
    }
}

#Preview {
    MenuView()
}
