//
//  CalculatorView.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-07.
//

import SwiftUI

struct CalculatorView: View {
    @State var startCalculate = false
    @State var number1: Double?
    @State var number2: Double?
    @State var answer = 0.0
    @State var operators = ""
    var body: some View {
        NavigationStack {
            VStack() {
                TextField(
                    "enter a number",
                    value: $number1,
                    format: .number
                )
                .textFieldStyle(.roundedBorder)
                HStack{
                    Button(action: {
                        operators = "+"
                    }, label: {
                        Image(systemName: "plus.square")
                            .resizable()
                            .scaledToFit()
                    })
                    Spacer()
                    Button(action: {
                        operators = "-"
                    }, label: {
                        Image(systemName: "minus.square")
                            .resizable()
                            .scaledToFit()
                    })
                    Spacer()
                    Button(action: {
                        operators = "*"
                    }, label: {
                        Image(systemName: "multiply.square")
                            .resizable()
                            .scaledToFit()
                    })
                    Spacer()
                    Button(action: {
                        operators = "/"
                    }, label: {
                        Image(systemName: "divide.square")
                            .resizable()
                            .scaledToFit()
                    })
                }
                .fontWeight(.ultraLight)
                HStack{
                    Button(action: {
                        operators = "A"
                    }, label: {
                        Image(systemName: "a.square")
                            .resizable()
                            .scaledToFit()
                    })
                    Spacer()
                    Button(action: {
                        operators = "C"
                    }, label: {
                        Image(systemName: "c.square")
                            .resizable()
                            .scaledToFit()
                    })
                    Spacer()
                    Button(action: {
                        operators = "M"
                    }, label: {
                        Image(systemName: "m.square")
                            .resizable()
                            .scaledToFit()
                    })
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "equal.square")
                            .resizable()
                            .scaledToFit()
                    })
                }
                .fontWeight(.ultraLight)
                .foregroundStyle(Color.eToolText)
                TextField(
                    "enter a number",
                    value: $number2,
                    format: .number
                )
                .textFieldStyle(.roundedBorder)
                Text("\(answer)")
            }
            .foregroundStyle(Color.eToolText)
        .padding()
        }
    }
}

#Preview {
    CalculatorView(operators: "")
}
