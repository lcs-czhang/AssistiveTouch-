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
            VStack(alignment: .center, spacing: -20) {
                Text("E-Tool")
                    .font(.system(size: 80))
                    .bold()
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
                Spacer()
                NavigationLink("Start", destination: tutorial())
                    .font(.system(size: 80))
                    .foregroundStyle(.black)
                    .bold()
            }
        
            .padding(50.0)
        //}
    }
}

#Preview {
    StartingView()
}
