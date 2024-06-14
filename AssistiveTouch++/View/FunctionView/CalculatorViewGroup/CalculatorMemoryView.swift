//
//  CalculatorMemoryView.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-13.
//

import SwiftUI

struct CalculatorMemoryView: View {
    @Binding var memorys: [MemoryItem]
    var body: some View {
        NavigationStack{
            List(memorys){ memory in
                Text(String(format: "%g", memory.answer))
            }
        }
    }
}

#Preview {
    CalculatorMemoryView(memorys: Binding.constant(exampleItems))
}
