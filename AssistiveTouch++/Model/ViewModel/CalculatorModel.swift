//
//  CalculatorModel.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-13.
//

import Foundation

struct MemoryItem: Identifiable{
    var id = UUID()
    var number1: Double
    var number2: Double
    var operators: String
    var answer: Double
}

let memory1 = MemoryItem(number1: 12, number2: 12, operators: "+", answer: 24)
let memory2 = MemoryItem(number1: 12, number2: 12, operators: "-", answer: 0)
let memory3 = MemoryItem(number1: 12, number2: 12, operators: "*", answer: 144)
let memory4 = MemoryItem(number1: 12, number2: 12, operators: "/", answer: 1)
let memory5 = MemoryItem(number1: 12, number2: 24, operators: "/", answer: 0.5)
let memory6 = MemoryItem(number1: 8, number2: 12.5, operators: "*", answer: 100)
let memory7 = MemoryItem(number1: 12.3, number2: 12, operators: "+", answer: 24.3)
let memory8 = MemoryItem(number1: 12, number2: 0, operators: "/", answer: 12/0)

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

