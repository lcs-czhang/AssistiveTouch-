//
//  CalculatorModel.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-13.
//

import Foundation

struct MemoryItem: Identifiable{
    var id = UUID()
    var answer: Double
}

let memory1 = MemoryItem(answer: 12.3)
let memory2 = MemoryItem(answer: 15.3)
let memory3 = MemoryItem(answer: 17.3)
let memory4 = MemoryItem(answer: 32.3)
let memory5 = MemoryItem(answer: 12.8)
let memory6 = MemoryItem(answer: 16.3)
let memory7 = MemoryItem(answer: 12.73)
let memory8 = MemoryItem(answer: 155.3)

let exampleItems = [
    memory1,
    memory2,
    memory3,
    memory4,
    memory5,
    memory6,
    memory7,
    memory8
]

struct FormulaItem{
    var number1: Double
    var number2: Double
    var operators: String
}

