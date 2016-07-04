//
//  ViewController.swift
//  calculator
//
//  Created by 김혜원 on 2016. 6. 26..
//  Copyright © 2016년 김혜원. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNum : Float = 0
    var secondNum : Float = 0
    var oper = ""
    var opflag = 0 //0: 숫자입력 1:연산자입력
    var pointFlag = 0
    var content : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBAction func equalBtn(sender: UIButton) {
        operfunc()
        opflag = 0
        resultLabel.text = String(firstNum)
        secondNum = 0
        
        content += "="
        content += String(firstNum)
        printContentLabel()
    }
    
    @IBAction func numberBtn(sender: AnyObject){
        let btn = sender as! UIButton
        let stringNum : String!
        
        stringNum = isOp(btn.tag)
        resultLabel.text = stringNum
        content += String(btn.tag)
        printContentLabel()
    }
    
    @IBAction func operationBtn(sender: AnyObject){
        let btn = sender as! UIButton
        
        var op: [Int: String] = [11: "+", 12: "-", 13: "*", 14: "/", 15: "%"] //enum
        
        content +=  op[btn.tag]!
        printContentLabel()
        
        operfunc()
        
        oper = op[btn.tag]!
        opflag = 1
        resultLabel.text = String(firstNum)
        secondNum = 0
        
    }
    
    @IBAction func ACBtn(sender: AnyObject) {
        reset()
    }
    
    func operfunc() {
        if secondNum != 0 {
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
        }
    }
    
    func reset() {
        firstNum = 0
        secondNum = 0
        oper = ""
        opflag = 0
        resultLabel.text = ""
        content = ""
        contentLabel.text = ""
    }
    
    func makeIntNum(number: Float, plusNumber: Float) -> Float{
        var resultNum: Float!
        resultNum = number*10 + plusNumber;

        return resultNum
    }
    
    func makeFloatNum(number: Float, plusNumber: Float) -> Float {
        var resultNum: Float!
        resultNum = number + plusNumber*0.1;
        pointFlag = 0
        
        return resultNum
    }
    
    func printContentLabel() {
        contentLabel.text = ""
        contentLabel.text = content
    }
    
    func isOp(tag: Int) -> String {
        if opflag==1 {
            if pointFlag == 0{
                secondNum = makeIntNum(secondNum, plusNumber: Float(tag))
            } else {
                secondNum = makeFloatNum(secondNum, plusNumber: Float(tag))
            }
            
            //stringNum = String(secondNum)
            return String(secondNum)
        } else{
            
            if pointFlag == 0 {
                firstNum = makeIntNum(firstNum, plusNumber: Float(tag))
            } else {
                firstNum = makeFloatNum(firstNum, plusNumber: Float(tag))
            }
            
            //stringNum = String(firstNum)
            return String(firstNum)
        }
    }
    
    @IBAction func pointBtn(sender: AnyObject) {
        pointFlag = 1
        
        content += "."
        printContentLabel()
        
    }
    
    @IBAction func bracketBtn(sender: AnyObject) {
        let btn = sender as! UIButton
        var op: [Int: String] = [21: "(", 22: ")"]
        
        content += op[btn.tag]!
        printContentLabel()
        
    }
    
    var stack : [String]!
    var top = 0
    func isempty() -> Bool {
        if top == 0 {
            return true
        }
        return false
    }
    
    func isFull() -> Bool {
        if top == stack.count {
            return true
        }
        return false
    }
    
    func provide(x: String) {
        if isFull() {
            contentLabel.text = "OverFlow"
        }
        stack.append(x)
    }
    
    func pop() -> String{
        var lastE : String!
        if isempty() {
            print("empty")
        }
        lastE = stack.popLast()
        return lastE
    }
    
    func calculate() {
        var returnE: String!
        var op = ["+","-","*","/","%","(",")"]

        returnE = pop()
        if op.contains(returnE) { //연산자
            
        } else { //숫자
            
        }
        
    }
    
    
    
    
    
}

