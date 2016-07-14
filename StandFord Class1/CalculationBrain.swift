//
//  CalculationBrain.swift
//  StandFord Class1
//
//  Created by allen on 7/14/16.
//  Copyright © 2016 allen. All rights reserved.
//

import Foundation

class CalculationBrain
{
    enum Op
    {
        case Operand (Double)
        case UniOperation (String, Double->Double)
        case BanOperation (String, (Double,Double)->Double)
    }
    
//    var OpStack = Array<Op>()
    var OpStack = [Op]()
  
//    var dicKnownOperation = Dictionary<String,Op>()
    var dicKnownOperation = [String:Op]()
    
    init()
    {
        dicKnownOperation["+"] = Op.BanOperation("+", {$0+$1})
        dicKnownOperation["−"] = Op.BanOperation("−", {$1-$0})
        dicKnownOperation["×"] = Op.BanOperation("×", {$0*$1})
        dicKnownOperation["÷"] = Op.BanOperation("÷", {$1/$0})
        dicKnownOperation["√"] = Op.UniOperation("√", {sqrt($0)})
    }
    
    
    
    func pushOperandStack(opeNum:Double)
    {
        OpStack.append(Op.Operand(opeNum))
    }
    func pushOperation(symbol : String)
    {
//        OpStack.append(Op.BanOperation(symbol, <#T##(Double, Double) -> Double#>))
    }
    
    
    
}