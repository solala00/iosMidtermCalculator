//
//  calculator.swift
//  midtermCalculator
//
//  Created by Lab i on 2020/5/7.
//  Copyright © 2020 Jason. All rights reserved.
//

import Foundation

class Calc {
    
    
    var calcProcess = CalcProcess()
    
    
    func toPositiveOrNegative() {
        if (calcProcess.calcComplete == false) {
            calcProcess.operand2 *= -1
            if (calcProcess.operand2 - floor(calcProcess.operand2) != 0.0){
                calcProcess.resultText = String(calcProcess.operand2)
                calcProcess.operand2Text = String(calcProcess.operand2)
            }else{
                calcProcess.resultText = String(Int(calcProcess.operand2))
                calcProcess.operand2Text = String(Int(calcProcess.operand2))
            }
        }
        else {
            calcProcess.operand1 *= -1
            if (calcProcess.operand1 - floor(calcProcess.operand1) != 0.0){
                calcProcess.resultText = String(calcProcess.operand1)
                calcProcess.operand1Text = String(calcProcess.operand1)
            }else{
                calcProcess.resultText = String(Int(calcProcess.operand1))
                calcProcess.operand1Text = String(Int(calcProcess.operand1))
            }
        }
    }
    
    func percentage() {
        if (calcProcess.calcComplete == false) {
            calcProcess.operand2 /= 100
            if (calcProcess.operand2 - floor(calcProcess.operand2) != 0.0){
                calcProcess.resultText = String(calcProcess.operand2)
                calcProcess.operand2Text = String(calcProcess.operand2)
            }else{
                calcProcess.resultText = String(Int(calcProcess.operand2))
                calcProcess.operand2Text = String(Int(calcProcess.operand2))
            }
        }
        else {
            calcProcess.operand1 /= 100
            if (calcProcess.operand1 - floor(calcProcess.operand1) != 0.0){
                calcProcess.resultText = String(calcProcess.operand1)
                calcProcess.operand1Text = String(calcProcess.operand1)
            }else{
                calcProcess.resultText = String(Int(calcProcess.operand1))
                calcProcess.operand1Text = String(Int(calcProcess.operand1))
            }
        }
    }
    
    
    func plus() {
        if (calcProcess.calcComplete == true) {
            calcProcess.calcComplete = false
            calcProcess.operand1 = Double(calcProcess.resultText)!
            calcProcess.operand1Text = calcProcess.resultText
            calcProcess.operand2 = 0
            calcProcess.operand2Text = ""
            calcProcess.resultText = "0"
        }
        else {
            calcProcess.operand1 = calcProcess.operand2
            if (calcProcess.operand2 - floor(calcProcess.operand2) != 0.0){
                calcProcess.operand1Text = String(calcProcess.operand2)
                calcProcess.operand1Text = String(calcProcess.operand2)
            }else{
                calcProcess.operand1Text = String(Int(calcProcess.operand2))
                calcProcess.operand1Text = String(Int(calcProcess.operand2))
            }
            calcProcess.operand2 = 0
            calcProcess.operand2Text = ""
            calcProcess.resultText = "0"
        }
        calcProcess.mathOperator = "+"
    }
    
    func minus() {
        if (calcProcess.calcComplete == true) {
            calcProcess.calcComplete = false
            calcProcess.operand1 = Double(calcProcess.resultText)!
            calcProcess.operand1Text = calcProcess.resultText
            calcProcess.operand2 = 0
            calcProcess.operand2Text = ""
            calcProcess.resultText = "0"
        }
        else {
            calcProcess.operand1 = calcProcess.operand2
            if (calcProcess.operand2 - floor(calcProcess.operand2) != 0.0){
                calcProcess.operand1Text = String(calcProcess.operand2)
                calcProcess.operand1Text = String(calcProcess.operand2)
            }else{
                calcProcess.operand1Text = String(Int(calcProcess.operand2))
                calcProcess.operand1Text = String(Int(calcProcess.operand2))
            }
            calcProcess.operand2 = 0
            calcProcess.operand2Text = ""
            calcProcess.resultText = "0"
        }
        calcProcess.mathOperator = "-"
    }
    
    func multiply() {
        if (calcProcess.calcComplete == true) {
            calcProcess.calcComplete = false
            calcProcess.operand1 = Double(calcProcess.resultText)!
            calcProcess.operand1Text = calcProcess.resultText
            calcProcess.operand2 = 0
            calcProcess.operand2Text = ""
            calcProcess.resultText = "0"
        }
        else {
            calcProcess.operand1 = calcProcess.operand2
            if (calcProcess.operand2 - floor(calcProcess.operand2) != 0.0){
                calcProcess.operand1Text = String(calcProcess.operand2)
                calcProcess.operand1Text = String(calcProcess.operand2)
            }else{
                calcProcess.operand1Text = String(Int(calcProcess.operand2))
                calcProcess.operand1Text = String(Int(calcProcess.operand2))
            }
            calcProcess.operand2 = 0
            calcProcess.operand2Text = ""
            calcProcess.resultText = "0"
        }
        calcProcess.mathOperator = "x"
    }
    
    func divide() {
        if (calcProcess.calcComplete == true) {
            calcProcess.calcComplete = false
            calcProcess.operand1 = Double(calcProcess.resultText)!
            calcProcess.operand1Text = calcProcess.resultText
            calcProcess.operand2 = 0
            calcProcess.operand2Text = ""
            calcProcess.resultText = "0"
        }
        else {
            calcProcess.operand1 = calcProcess.operand2
            if (calcProcess.operand2 - floor(calcProcess.operand2) != 0.0){
                calcProcess.operand1Text = String(calcProcess.operand2)
                calcProcess.operand1Text = String(calcProcess.operand2)
            }else{
                calcProcess.operand1Text = String(Int(calcProcess.operand2))
                calcProcess.operand1Text = String(Int(calcProcess.operand2))
            }
            calcProcess.operand2 = 0
            calcProcess.operand2Text = ""
            calcProcess.resultText = "0"
        }
        calcProcess.mathOperator = "÷"
    }
    
    
    func equal() {
        switch(calcProcess.mathOperator){
        case "+":
            calcProcess.operand1 = calcProcess.operand1 + calcProcess.operand2
            calcProcess.calcComplete = true
            calcProcess.result = calcProcess.operand1
            if (calcProcess.result - floor(calcProcess.result) != 0.0){
                calcProcess.resultText = String(calcProcess.result)
            }else{
                calcProcess.resultText = String(Int(calcProcess.result))
            }
        case "-":
            calcProcess.operand1 = calcProcess.operand1 - calcProcess.operand2
            calcProcess.calcComplete = true
            calcProcess.result = calcProcess.operand1
            if (calcProcess.result - floor(calcProcess.result) != 0.0){
                calcProcess.resultText = String(calcProcess.result)
            }else{
                calcProcess.resultText = String(Int(calcProcess.result))
            }
        case "x":
            if(calcProcess.operand2 == 0){
                calcProcess.operand1 = 0.0
            }else{
                calcProcess.operand1 = calcProcess.operand1*calcProcess.operand2
                if(String(calcProcess.operand1).replace(target: ".", withString: "").count > 9){
                    let digit = 9 - String(Int(calcProcess.operand1)).count
                    calcProcess.operand1 = calcProcess.operand1.rounding(toDecimal: digit)
                }
            }
            calcProcess.calcComplete = true
            calcProcess.result = calcProcess.operand1
            if (calcProcess.result - floor(calcProcess.result) != 0.0){
                calcProcess.resultText = String(calcProcess.result)
            }else{
                calcProcess.resultText = String(Int(calcProcess.result))
            }
        case "÷":
            if(calcProcess.operand2 == 0){
                calcProcess.operand1 = 0.0
            }else{
                calcProcess.operand1 = calcProcess.operand1/calcProcess.operand2
                if(String(calcProcess.operand1).replace(target: ".", withString: "").count > 9){
                    let digit = 9 - String(Int(calcProcess.operand1)).count
                    calcProcess.operand1 = calcProcess.operand1.rounding(toDecimal: digit)
                }
            }
            calcProcess.calcComplete = true
            calcProcess.result = calcProcess.operand1
            if (calcProcess.result - floor(calcProcess.result) != 0.0){
                calcProcess.resultText = String(calcProcess.result)
            }else{
                calcProcess.resultText = String(Int(calcProcess.result))
            }
        default:
            break
        }
    }

}

extension Double {
    func rounding(toDecimal decimal: Int) -> Double {
        let numberOfDigits = pow(10.0, Double(decimal))
        return (self * numberOfDigits).rounded(.toNearestOrAwayFromZero) / numberOfDigits
    }
}

extension String{
func replace(target: String, withString: String) -> String
{
return self.replacingOccurrences(of: target, with: withString, options: NSString.CompareOptions.literal, range: nil)
}
}

