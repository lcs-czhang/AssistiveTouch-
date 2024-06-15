//
//  CalculatorMemoryView.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-13.
//

import SwiftUI

struct CalculatorMemoryView: View {
    @Binding var memorys: [MemoryItem]
    @Binding var isShowing: Bool
    var body: some View {
        NavigationStack{
            Form {
                if memorys.isEmpty {
                    Text("You don't have any historical calculations")
                        .font(.largeTitle)
                } else {
                    List(memorys){ memory in
                        ScrollView(.vertical) {
                            HStack {
                                Text(String(format: "%g", memory.number1))
                                switch memory.operators {
                                case "+":
                                    Image(systemName: "plus")
                                case "-":
                                    Image(systemName: "minus")
                                case "*":
                                    Image(systemName: "multiply")
                                default:
                                    Image(systemName: "divide")
                                }
                                Text(String(format: "%g", memory.number2))
                                Text("=")
                                Text(String(format: "%g", memory.answer))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Memory Stored")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        isShowing = false
                    } label: {
                        Text("Back")
                    }
                }
            }
        }
    }
}

#Preview {
    CalculatorMemoryView(memorys: Binding.constant(exampleItems), isShowing: Binding.constant(true))
}
