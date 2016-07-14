//
//  ViewController.swift
//  StandFord Class1
//
//  Created by allen on 7/13/16.
//  Copyright © 2016 allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var  userIsInputingNumerInDisplay = false
    
    
    
    
    @IBOutlet weak var display: UITextField!
    
    @IBAction func AppendDigit(sender: UIButton)
    {
        let digitNum = sender.currentTitle!
        if userIsInputingNumerInDisplay
        {
            display.text! = display.text! + digitNum
        }
        else
        {
            display.text! = digitNum
            userIsInputingNumerInDisplay = true
            
        }
        
        
    }
    
    
    @IBAction func operatorFunction(sender: UIButton)
    {
        let operation = sender.currentTitle!
        print("operation is \(operation)")

        switch operation
        {
        case "+": preformOperation {$0 + $1}
        case "−": preformOperation {$1 - $0}
        case "×": preformOperation {$1 * $0}
        case "÷": preformOperation {$1 / $0}
        case "√": preformOperationOneOperator {sqrt($0)}
            
        default:
            break
        }
    }
    
    //这个函数用来做栈操作，入栈跟出栈
    func preformOperation(operation:(Double, Double)-> Double)
    {
        if OperatorStack.count >= 2
        {
            displayValue    = operation(OperatorStack.removeLast(),OperatorStack.removeLast())
            Enter()
            print("the stack is \(OperatorStack)")
            print("the calculate value is \(displayValue)")
        }
    }
    
    func preformOperationOneOperator(operation: Double-> Double)
    {
        if OperatorStack.count >= 1
        {
            displayValue    = operation(OperatorStack.removeLast())
            Enter()
            print("the stack is \(OperatorStack)")
            print("the calculate value is \(displayValue)")
        }
    }

    
    
    var OperatorStack : Array<Double> = Array<Double>()
    
    
    @IBAction func Enter()
    {
        userIsInputingNumerInDisplay = false
        OperatorStack.append(displayValue)
        print("OperatorStack: \(OperatorStack)")
        
    }
    
    var  displayValue : Double
    {
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set{
            display.text! = "\(newValue)"
            userIsInputingNumerInDisplay = false
        }
        
    }

}

