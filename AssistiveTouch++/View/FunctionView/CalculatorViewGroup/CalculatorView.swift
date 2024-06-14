//
//  CalculatorView.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-07.
//

import SwiftUI

struct CalculatorView: View {
    @State var number1 = 0.0
    @State var number2 = 0.0
    @State var answer = 0.0
    @State var operators = ""
    @State var note = ""
    
    @Binding var memorys: [MemoryItem]
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
                        if operators == "+" {
                            Image(systemName: "plus.square.fill")
                                .resizable()
                                .scaledToFit()
                        } else {
                            Image(systemName: "plus.square")
                                .resizable()
                                .scaledToFit()
                        }
                    })
                    Spacer()
                    Button(action: {
                        operators = "-"
                    }, label: {
                        if operators == "-" {
                            Image(systemName: "minus.square.fill")
                                .resizable()
                                .scaledToFit()
                        } else {
                            Image(systemName: "minus.square")
                                .resizable()
                                .scaledToFit()
                        }
                    })
                    Spacer()
                    Button(action: {
                        operators = "*"
                    }, label: {
                        if operators == "*" {
                            Image(systemName: "multiply.square.fill")
                                .resizable()
                                .scaledToFit()
                        } else {
                            Image(systemName: "multiply.square")
                                .resizable()
                                .scaledToFit()
                        }
                    })
                    Spacer()
                    Button(action: {
                        operators = "/"
                    }, label: {
                        if operators == "/" {
                            Image(systemName: "divide.square.fill")
                                .resizable()
                                .scaledToFit()
                        } else {
                            Image(systemName: "divide.square")
                                .resizable()
                                .scaledToFit()
                        }
                        
                    })
                }
                .fontWeight(.ultraLight)
                HStack{
                    Button(action: {
                        number1 = answer
                    }, label: {
                        Image(systemName: "a.square")
                            .resizable()
                            .scaledToFit()
                    })
                    Spacer()
                    Button(action: {
                        number1 = 0
                        number2 = 0
                        operators = ""
                    }, label: {
                        Image(systemName: "c.square")
                            .resizable()
                            .scaledToFit()
                    })
                    Spacer()
                    NavigationLink{
                        CalculatorMemoryView()
                    }label:{
                        Image(systemName:"m.square")
                            .resizable()
                            .scaledToFit()
                    }
                    Spacer()
                    Button(action: {
                        note = ""
                        answer = Calculation()
                        let newMemory = MemoryItem(answer: answer)
                        memorys.append(newMemory)
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
                    .font(.title)
                Text(note)
                    .font(.system(size: 20))
            }
            .foregroundStyle(Color.eToolText)
        .padding()
        }
    }
    
    func Calculation() -> Double {
        var answer = 0.0
        switch operators{
        case "+":
            answer = number1 + number2
        case "-":
            answer = number1 - number2
        case "*":
            answer = number1 * number2
        case "/":
            if number2 == 0 {
                note = "You cannot put a zero as divisor!"
            } else {
                answer = number1 / number2
            }
        default:
            note = "So, where is your operator?"
        }
        operators = ""
        return answer
    }
}

#Preview {
    CalculatorView(memory: <#Binding<[MemoryItem]>#>)
}
