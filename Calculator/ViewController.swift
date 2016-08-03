//
//  ViewController.swift
//  Calculator
//
//  Created by Eric Cook on 9/16/15.
//  Copyright (c) 2015 Better Search, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var display: UILabel!
    
    var typing = false
    
    var mathArray = [String]()
    
    var mathArray1 = [String]()
    
    var operatorArray = [String]()
    
    var mr = String()
    
    var math = Float()
    
    @IBAction func appendDigit(sender: UIButton) {
        
        let digit = sender.currentTitle as String!
        
        if typing == true {
        
            display.text = display.text! + digit
            
            
        } else {
            
            display.text = digit
            
            mathArray1 = [digit]
            
            typing = true
            
        }
        
        print(mathArray1)
        
        print(mathArray)
        
        print("Digit = \(display.text)")
        
    }
    @IBAction func clearAll(sender: UIButton) {
        
        display.text = "0"
        
        typing = false
        
        mathArray = []
        
        mathArray1 = []
        
        operatorArray = []
        
        mr = ""
        
        math = 0
        
    }
    @IBAction func equals(sender: UIButton) {
        
        typing = false
        
        mathArray1 = [display.text!]
        
        if operatorArray == ["+"] {
            
            math = Float(mathArray[0])! + Float(mathArray1[0])!
            
        }
        
        if operatorArray == ["-"] {
            
            math = Float(mathArray[0])! - Float(mathArray1[0])!
            
        }
        
        if operatorArray == ["÷"] {
            
            math = Float(mathArray[0])! / Float(mathArray1[0])!
            
        }
        
        if operatorArray == ["*"] {
            
            math = Float(mathArray[0])! * Float(mathArray1[0])!
            
        }

        
        if operatorArray == ["√"] {
            
            let square = Float(mathArray[0])!
            
            math = sqrt(square)
            
        }
        
        display.text = "\(math)"
        
        print(mathArray)
        print(mathArray1)
        print("\(math)")
        
        mathArray = []
        
        operatorArray = []
        
        mathArray1 = []
        
        
    }
    @IBAction func plus(sender: UIButton) {
        
        typing = false
        
        operatorArray = ["+"]
        
        mathArray = [display.text!]
        
        mathArray1 = []
        
        print(mathArray)
        
    }
    
    @IBAction func minus(sender: UIButton) {
        
         typing = false
        
         operatorArray = ["-"]
        
        mathArray = [display.text!]
        
        mathArray1 = []
        
        print(mathArray)
    }
    
    @IBAction func divide(sender: UIButton) {
        
         typing = false
        
          operatorArray = ["÷"]
        
        mathArray = [display.text!]
        
        mathArray1 = []
        
        print(mathArray)
    }
    
    @IBAction func times(sender: UIButton) {
        
         typing = false
        
         operatorArray = ["*"]
        
        mathArray = [display.text!]
        
        mathArray1 = []
        
        print(mathArray)
        
    }
    
    @IBAction func squareRoot(sender: UIButton) {
        
        typing = false
        
        operatorArray = ["√"]
        
        mathArray = [display.text!]
        
        mathArray1 = []
        
        print(mathArray)
        
    }
    
    @IBAction func clearLast(sender: UIButton) {
        
         display.text = "0"
        
         typing = false
        
         mathArray1 = []
        
        
    }
    
    @IBAction func memoryRecall(sender: UIButton) {
        
        if mr.isEmpty {
            
            mr = display.text!
            
        } else {
            
            display.text = mr
            
            mathArray1 = [mr]
            
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

