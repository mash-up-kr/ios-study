//
//  mainViewController.swift
//  hjCalculator
//
//  Created by 장섭 심 on 2016. 6. 26..
//  Copyright © 2016년 장섭 심. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    var result = String()
    
    @IBAction func equBtn(sender: AnyObject) {
    }
    @IBAction func nineBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "9"
        }
        else{
            result =  result + "9"
            resultLbl.text = result
        }
    }
    @IBAction func eightBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "8"
        }
        else{
            result =  result + "8"
            resultLbl.text = result
        }
    }

    @IBAction func sevenBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "7"
        }
        else{
            result =  result + "7"
            resultLbl.text = result
        }
    }
    @IBAction func sixBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "6"
        }
        else{
            result =  result + "6"
            resultLbl.text = result
        }
    }
    @IBAction func fiveBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "5"
        }
        else{
            result =  result + "5"
            resultLbl.text = result
        }
    }

    @IBAction func fourBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "4"
        }
        else{
            result =  result + "4"
            resultLbl.text = result
        }
    }

    @IBAction func threeBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "3"
        }
        else{
            result =  result + "3"
            resultLbl.text = result
        }
    }
    @IBAction func twoBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "2"
        }
        else{
            result =  result + "2"
            resultLbl.text = result
        }
    }
    @IBAction func oneBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기" && resultLbl.text == "0"){
            resultLbl.text = "1"
        }
        else{
            result =  result + "1"
            resultLbl.text = result
        }
    }
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBAction func zeroBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기"){
            resultLbl.text = "0"
        }
        else{
            result =  result + "0"
            resultLbl.text = result
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
