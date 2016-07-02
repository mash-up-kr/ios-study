//
//  ViewController.swift
//  calculator
//
//  Created by 김혜원 on 2016. 6. 26..
//  Copyright © 2016년 김혜원. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstNum = 0
    var secondNum = 0
    var oper = ""
    var opflag = 0 //0: 숫자입력 1:연산자입력
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func equalBtn(sender: UIButton) {
        switch oper {
        case "+":
            firstNum = firstNum + secondNum
        case "-":
            firstNum = firstNum - secondNum
        case "*":
            firstNum = firstNum * secondNum
        case "/":
            firstNum = firstNum / secondNum
        case "%":
            firstNum = firstNum % secondNum
        default:
            print("else당")
        }
        opflag = 0
        resultLabel.text = String(firstNum)
        secondNum = 0

    }
    @IBAction func numberBtn(sender: AnyObject){
        let btn = sender as! UIButton
        if opflag==1 {
            secondNum = Int(secondNum)*10 + btn.tag;
            print(secondNum)
            resultLabel.text = String(secondNum)
        } else{
            firstNum = firstNum*10 + btn.tag;
            print(firstNum)
            resultLabel.text = String(firstNum)
        }
    }
    @IBAction func operationBtn(sender: AnyObject){
        let btn = sender as! UIButton
        
        var op: [Int: String] = [11: "+", 12: "-", 13: "*", 14: "/", 15: "%"]
       
                switch oper {
                case "+":
                    firstNum = firstNum + secondNum
                case "-":
                    firstNum = firstNum - secondNum
                case "*":
                    firstNum = firstNum * secondNum
                case "/":
                    firstNum = firstNum / secondNum
                case "%":
                    firstNum = firstNum % secondNum
                default:
                    print("else당")
                }
        
        oper = op[btn.tag]!
        print(oper)
        opflag = 1
        resultLabel.text = String(firstNum)
        secondNum = 0


    }
    
    @IBAction func ACBtn(sender: AnyObject) {
        firstNum = 0
        secondNum = 0
        oper = ""
        opflag = 0
        resultLabel.text = ""

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

