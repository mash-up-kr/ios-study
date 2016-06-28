//
//  ViewController.swift
//  SHCalculator
//
//  Created by 이설희 on 2016. 6. 27..
//  Copyright © 2016년 seolhee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    var stack = Array<String>()
    //var operandStack = Array<String>()
    var checkingOfUserNumber = false
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
    //숫자
    @IBAction func appendNumber(sender: UIButton) {
        
        if checkingOfUserNumber {
        resultLabel.text = resultLabel.text! + sender.currentTitle!
        }
        else {
            resultLabel.text = sender.currentTitle!
            checkingOfUserNumber = true
        }
        
    }
    
    
    //연산자
    @IBAction func pushOperationToStack(sender: UIButton) {
        stack.append(resultLabel.text!)
        stack.append(sender.currentTitle!)
        checkingOfUserNumber = false
        
    }
    
    
    //=
    func operate() {
     
        var startIdx = 0
        
        for idx in startIdx..<stack.count {
            
            switch stack[idx] {
            case "*":
                let n1 :Double? = Double(stack[idx-1])
                let n2 :Double? = Double(stack[idx+1])
                stack[idx] = String(n1! * n2!)
                stack.removeAtIndex(idx-1)
                stack.removeAtIndex(idx)
                startIdx = idx
            case "/":
                let n1 :Double? = Double(stack[idx-1])
                let n2 :Double? = Double(stack[idx+1])
                stack[idx] = String(n1! / n2!)
                stack.removeAtIndex(idx-1)
                stack.removeAtIndex(idx)
            default: break
            }
        }
        
        for idx in 0...stack.count {
            switch stack[idx] {
            case "+":
                let n1 :Double? = Double(stack[idx-1])
                let n2 :Double? = Double(stack[idx+1])
                stack[idx] = String(n1! + n2!)
                stack.removeAtIndex(idx-1)
                stack.removeAtIndex(idx)
            case "-":
                let n1 :Double? = Double(stack[idx-1])
                let n2 :Double? = Double(stack[idx+1])
                stack[idx] = String(n1! - n2!)
                stack.removeAtIndex(idx-1)
                stack.removeAtIndex(idx)
            default: print(stack)
            }
        }
        
    }
    
    
    
   @IBAction func displayValue() {

        stack.append(resultLabel.text!)
        operate()
        resultLabel.text = stack[0]
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

