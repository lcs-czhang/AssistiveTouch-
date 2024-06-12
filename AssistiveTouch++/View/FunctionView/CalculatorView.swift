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
        VStack() {
            TextField(
                "",
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
            .foregroundStyle(Color.eToolText)
            HStack{
                Button(action: {
                    operators = "√"
                }, label: {
                    Image( "custom.x.squareroot.square")
                        .resizable()
                        .scaledToFit()
                })
                Spacer()
                Button(action: {
                    operators = "^"
                }, label: {
                    Image("x.square")
                        .resizable()
                        .scaledToFit()
                })
                Spacer()
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
            }
            .fontWeight(.ultraLight)
            .foregroundStyle(Color.eToolText)
            TextField(
                "",
                value: $number2,
                format: .number
            )
            .textFieldStyle(.roundedBorder)
            Button(action: {
                
            }, label: {
                Image(systemName: "equal.square")
                    .resizable()
                    .scaledToFit()
            })
            .frame(height: 100)
            .fontWeight(.ultraLight)
            .foregroundStyle(Color.eToolText)
            .padding()
            Text("\(answer)")
        }
        .padding()
    }
}

#Preview {
    CalculatorView(operators: "")
}
