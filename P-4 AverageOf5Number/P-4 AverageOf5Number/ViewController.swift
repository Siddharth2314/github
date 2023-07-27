//
//  ViewController.swift
//  P-4 AverageOf5Number
//
//  Created by Siddharth Dave on 17/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var math: UITextField!
    @IBOutlet weak var IOS: UITextField!
    @IBOutlet weak var FSD: UITextField!
    @IBOutlet weak var Python: UITextField!
    @IBOutlet weak var Java: UITextField!
    @IBOutlet weak var Sum: UILabel!
    @IBOutlet weak var sumtxt: UILabel!
    @IBOutlet weak var avgtxt: UILabel!
    @IBOutlet weak var average: UILabel!
    @IBOutlet weak var gradetxt: UILabel!
    @IBOutlet weak var grade: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sum.isHidden = true
        sumtxt.text = "?"
//        average.isHidden = true
        avgtxt.text = "?"
//        grade.isHidden = true
        gradetxt.text = "?"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ansClick(_ sender: Any) {
        
        var maths = Int(math.text!)
        var IOS = Int(IOS.text!)
        var FSD = Int(FSD.text!)
        var Python = Int(Python.text!)
        var Java = Int(Java.text!)
        
        var sum = (maths!) + (IOS!) + (FSD!) + (Python!) + (Java!)
        
        var average = sum / 5
        
        sumtxt.text = String(sum)
        avgtxt.text = String(average) + "%"
        
        if average>=90
        {
            gradetxt.text = "Grade is A+"
        }
        else if average>=80 && average<90
        {
            gradetxt.text = "Grade is A"
        }
        else if average>=70 && average<80
        {
            gradetxt.text = "Grade is B"
        }
        else if average>=60 && average<70
        {
            gradetxt.text = "Grade is C"
        }
        else if average>=50 && average<60
        {
            gradetxt.text = "Grade is D"
        }
        else if average<50
        {
            gradetxt.text = "Grade is F"
            gradetxt.textColor = UIColor.red
        }

    }
    
}

