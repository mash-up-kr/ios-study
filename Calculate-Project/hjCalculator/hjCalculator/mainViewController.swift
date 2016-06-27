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
    }
    @IBAction func eightBtn(sender: AnyObject) {
    }

    @IBAction func sevenBtn(sender: AnyObject) {
    }
    @IBAction func sixBtn(sender: AnyObject) {
    }
    @IBAction func fiveBtn(sender: AnyObject) {
    }

    @IBAction func fourBtn(sender: AnyObject) {
    }

    @IBAction func threeBtn(sender: AnyObject) {
    }
    @IBAction func twoBtn(sender: AnyObject) {
        result = "2"
        resultLbl.text = result
    }
    @IBAction func oneBtn(sender: AnyObject) {
        if(resultLbl.text == "현정이의계산기"){
            resultLbl.text = "1"
        }
        else{
            result =  result + "1"
            resultLbl.text = result

        }
    }
    @IBOutlet weak var resultLbl: UILabel!
    @IBAction func zeroBtn(sender: AnyObject) {
        resultLbl.text = "0000"
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
