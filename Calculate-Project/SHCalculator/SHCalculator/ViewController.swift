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
    var array = Array<String>()
    var checkingOfUserNumber = false
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
    //숫자와 .
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
        array.append(resultLabel.text!)
        array.append(sender.currentTitle!)
        checkingOfUserNumber = false
    }
    
    
    //%
    @IBAction func changeToPercent() {
        let n :Double? = Double(resultLabel.text!)
        resultLabel.text = String(n! * 0.1)
        
    }
    
    //+/-
    @IBAction func changePrefixOperator() {
        let n :Double? = Double(resultLabel.text!)
        resultLabel.text = String(n! * -1)
        
    }

    
    //AC
    @IBAction func pushOperationToStack() {
        array.removeAll()
        resultLabel.text = "0"
        checkingOfUserNumber = false
    }
    
    func operate() -> String{
        
        var tmpIdx = 0
        var tmpArray = Array<String>()
        
        tmpArray.append(array[0])
        
        for idx in 1..<array.count {
            
            if array[idx-1] == "*" || array[idx-1] == "/"  {
                
                let n1 :Double? = Double(array[idx-2])
                let n2 :Double? = Double(array[idx])
                tmpIdx -= 1
                
                switch array[idx-1] {
                    
                case "*":
                    array[idx] = String(n1! * n2!)
                    tmpArray[tmpIdx] = String(n1! * n2!)

                case "/":
                    array[idx] = String(n1! / n2!)
                    tmpArray[tmpIdx] = String(n1! / n2!)
                    
                default: break
                
                }
            }
            else {
                if array[idx] != "*" && array[idx] != "/"{
                    tmpArray.append(array[idx])
                }
                tmpIdx += 1
            }
        }
        
        array = tmpArray
        tmpArray.removeAll()
        tmpIdx = 0
        tmpArray.append(array[0])
        
        for idx in 1..<array.count {
            
            
            if array[idx-1] == "+" || array[idx-1] == "-" {
                
                let n1 :Double? = Double(array[idx-2])
                let n2 :Double? = Double(array[idx])
                tmpIdx -= 1
                
                switch array[idx-1] {
                case "+":
                    array[idx] = String(n1! + n2!)
                    tmpArray[tmpIdx] = String(n1! + n2!)
                    
                case "-":
                    array[idx] = String(n1! - n2!)
                    tmpArray[tmpIdx] = String(n1! - n2!)
                    
                default: break
                }
            }
            else {
                if array[idx] != "+" && array[idx] != "-" {
                    tmpArray.append(array[idx])
                }
                tmpIdx += 1
            }
            
        }
        
        return tmpArray[0]
        
    }
    
    
    
    //=
   @IBAction func displayValue() {

        array.append(resultLabel.text!)
        let result = operate()
        resultLabel.text = result
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

