//
//  CalculatorModel.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-13.
//

import Foundation

struct MemoryItem: Identifiable, Codable {
    var id: Int?
    var answer: Double
}
struct FormulaItem: Identifiable, Codable {
    var number1: Double
    var number2: Double
    var operators: String
}

