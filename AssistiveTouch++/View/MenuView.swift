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
            ZStack {
                Color.eToolBackground
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: -20) {
                    Text("E-Tool")
                        .font(.system(size: 80))
                        .bold()
                        .foregroundStyle(Color.eToolText)
                    HStack(spacing: 0) {
                        Text("Bo")
                            .font(.system(size: 80))
                            .bold()
                        Image("custom.wrench.and.screwdriver.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45)
                            .padding(.top)
                    }
                    .foregroundStyle(Color.eToolText)
                    Spacer()
                    List{
                        NavigationLink {
                            TranslationView()
                        } label: {
                            Text("Translation")
                        }
                        
                        .foregroundStyle(.eToolText)
                        
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
                    .listStyle(.plain)
                    .frame(height: 450)
                }
                
                .padding(50.0)
            }
            
        }
    }
}

#Preview {
    MenuView()
}
