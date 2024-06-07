//
//  SplashScreenView.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-05.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        //NavigationStack {
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
                    NavigationLink("Start", destination: MenuView())
                        .font(.system(size: 80))
                        .foregroundStyle(Color.eToolText)
                        .bold()
                }
                
                .padding(50.0)
            }
        //}
    }
}

#Preview {
    SplashScreenView()
}
