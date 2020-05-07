//
//  calculateProcess.swift
//  midtermCalculator
//
//  Created by Lab i on 2020/5/7.
//  Copyright © 2020 Jason. All rights reserved.
//

import Foundation

struct CalcProcess{
    
    var operand1 = 0.0
    var operand1Text = ""
    
    var operand2 = 0.0
    var operand2Text = ""
    
    var mathOperator = ""
    
    var result = 0.0
    var resultText = ""
    
    var calcComplete = false
    
    init(){
        operand1 = 0.0
        operand1Text = ""
        operand2 = 0.0
        operand2Text = ""
        mathOperator = ""
        result = 0.0
        resultText = ""
        calcComplete = false
    }
}
