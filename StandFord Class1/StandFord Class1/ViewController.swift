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
    
    var  userIsInputingNumerInDisplay:Bool = false
    
    
    
    
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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

