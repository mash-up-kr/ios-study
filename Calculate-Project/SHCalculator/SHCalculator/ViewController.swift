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
    var operationStack = Array<String>()
    var operandStack = Array<String>()
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
        operandStack.append(resultLabel.text!)
        operationStack.append(sender.currentTitle!)
        checkingOfUserNumber = false
        
    }
    
    
    //=
    @IBAction func operate() {
        
        
    }
    
   
    
    
   func displayValue(sender: AnyObject) {
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

