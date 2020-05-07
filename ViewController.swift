//
//  ViewController.swift
//  midtermCalculator
//
//  Created by Lab i on 2020/5/7.
//  Copyright © 2020 Jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var calc = Calc()
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var process: UILabel!
    
    
    
    
    
    @IBAction func numberButton(_ sender: UIButton) {
        if (calc.calcProcess.calcComplete == true) {
            calc.calcProcess.calcComplete = false
            result.text = ""
            result.text = result.text! + (sender.titleLabel?.text!)!
            calc.calcProcess.operand2 = Double(result.text!)!
            calc.calcProcess.operand1 = 0
            calc.calcProcess.mathOperator = ""
        }
        else {
            if (result.text == "0" && sender.titleLabel?.text! != "0") {
                result.text = ""
            }
            if (result.text != "0" || sender.titleLabel?.text! != "0") {
                result.text = result.text! + (sender.titleLabel?.text!)!
                calc.calcProcess.operand2 = Double(result.text!)!
                if (calc.calcProcess.operand2 - floor(calc.calcProcess.operand2) != 0.0){
                    calc.calcProcess.operand2Text = String(calc.calcProcess.operand2)
                    calc.calcProcess.operand2Text = String(calc.calcProcess.operand2)
                }else{
                    calc.calcProcess.operand2Text = String(Int(calc.calcProcess.operand2))
                    calc.calcProcess.operand2Text = String(Int(calc.calcProcess.operand2))
                }
                
            }
        }
        updateProcessText()
    }
    
    
    @IBAction func pressAC(_ sender: UIButton) {
        calc.calcProcess.calcComplete = false
        calc.calcProcess.mathOperator = ""
        calc.calcProcess.operand1 = 0
        calc.calcProcess.operand1Text = ""
        calc.calcProcess.operand2 = 0
        calc.calcProcess.operand2Text = ""
        calc.calcProcess.result = 0
        calc.calcProcess.resultText = ""
        result.text = "0"
        updateProcessText()
    }
    
    
    @IBAction func pressDot(_ sender: UIButton) {
        if (result.text?.contains("."))!{
            result.text! += ""
        }
        else{
            result.text! += "."
        }
    }
    
    @IBAction func pressToPositiveOrNegative(_ sender: UIButton) {
        calc.toPositiveOrNegative()
        result.text = calc.calcProcess.resultText
        updateProcessText()
    }
    
    @IBAction func pressPercentage(_ sender: UIButton) {
        calc.percentage()
        result.text = calc.calcProcess.resultText
        updateProcessText()
    }
    
    
    @IBAction func pressPlus(_ sender: UIButton) {
        calc.plus()
        result.text = calc.calcProcess.resultText
        updateProcessText()
    }
    
    
    @IBAction func pressMinus(_ sender: UIButton) {
        calc.minus()
        result.text = calc.calcProcess.resultText
        updateProcessText()
    }
    
    
    @IBAction func pressMultiply(_ sender: UIButton) {
        calc.multiply()
        result.text = calc.calcProcess.resultText
        updateProcessText()
    }
    
    
    @IBAction func pressDivide(_ sender: UIButton) {
        calc.divide()
        result.text = calc.calcProcess.resultText
        updateProcessText()
    }
    
    @IBAction func pressEqual(_ sender: UIButton) {
        calc.equal()
        process.text! += "="
        result.text = calc.calcProcess.resultText
    }
    
    func updateProcessText() {
        if (calc.calcProcess.operand1 != 0 || calc.calcProcess.mathOperator != "") {
            process.text = calc.calcProcess.operand1Text
        }
        else {
            process.text = calc.calcProcess.operand2Text
        }
        switch calc.calcProcess.mathOperator {
        case "%":
            process.text = process.text! + calc.calcProcess.mathOperator
        case "+":
            process.text = process.text! + calc.calcProcess.mathOperator
        case "-":
            process.text = process.text! + calc.calcProcess.mathOperator
        case "x":
            process.text = process.text! + calc.calcProcess.mathOperator
        case "÷":
            process.text = process.text! + calc.calcProcess.mathOperator
        default:
            break
        }
        if calc.calcProcess.mathOperator != "" {
            process.text = process.text! + calc.calcProcess.operand2Text
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

