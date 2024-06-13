//
//  CalculatorModel.swift
//  AssistiveTouch++
//
//  Created by Yuzhou Zhang on 2024-06-12.
//

import Foundation

class CalculatorModel{
    
}
func Calculation(number1: Double, number2: Double, operaters: String) -> Double {
    var answer = 0.0
    switch operaters{
    case "+":
        answer = number1 + number2
    case "-":
        answer = number1 - number2
    case "*":
        answer = number1 * number2
    case "/":
        answer = number1 / number2
    default:
        print("So, where is your operator?")
    }
    return answer
}
func
