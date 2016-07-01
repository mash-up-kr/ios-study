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
        array.append(resultLabel.text!)
        array.append(sender.currentTitle!)
        checkingOfUserNumber = false
        
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
        var doing = false
        
        tmpArray.append(array[0])
        
        for idx in 1..<array.count {
            
            if array[idx-1] == "*" || array[idx-1] == "/" {
                doing = true
            }
            
            if doing  {
                switch array[idx-1] {
                case "*":
                    let n1 :Double? = Double(array[idx-2])
                    let n2 :Double? = Double(array[idx])
                    tmpIdx -= 1
                    tmpArray[tmpIdx] = String(n1! * n2!)
                    array[idx] = String(n1! * n2!)
                    doing = false
                    
                case "/":
                    let n1 :Double? = Double(array[idx-2])
                    let n2 :Double? = Double(array[idx])
                    tmpIdx -= 1
                    tmpArray[tmpIdx] = String(n1! / n2!)
                    array[idx] = String(n1! / n2!)
                    doing = false
                    
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
        doing = false
        tmpIdx = 0
        tmpArray.append(array[0])
        
        for idx in 1..<array.count {
            
            if array[idx-1] == "+" || array[idx-1] == "-" {
                doing = true
            }
            
            if doing  {
                
                switch array[idx-1] {
                case "+":
                    let n1 :Double? = Double(array[idx-2])
                    let n2 :Double? = Double(array[idx])
                    tmpIdx -= 1
                    tmpArray[tmpIdx] = String(n1! + n2!)
                    array[idx] = String(n1! + n2!)
                    doing = false
                    
                case "-":
                    let n1 :Double? = Double(array[idx-2])
                    let n2 :Double? = Double(array[idx])
                    tmpIdx -= 1
                    tmpArray[tmpIdx] = String(n1! - n2!)
                    array[idx] = String(n1! - n2!)
                    doing = false
                    
                default: break
                }
            }
            else {
                if array[idx] != "+" && array[idx] != "-"{
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

