//
//  ViewController.swift
//  P-8 Even & Odd
//
//  Created by Siddharth Dave on 18/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eventxt: UILabel!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var oddtxt: UILabel!
    @IBOutlet weak var even: UILabel!
    @IBOutlet weak var odd: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        even.isHidden = true
        odd.isHidden = true
        eventxt.isHidden = true
        oddtxt.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func evenoddclick(_ sender: Any) {
        even.isHidden = false
        odd.isHidden = false
        eventxt.isHidden = false
        oddtxt.isHidden = false
        
        let n = Int(number.text!)
        var even = [String]()
        var odd = [String]()
        for i in 1...n!
        {
            if i%2==0
            {
                even.append(String(i))
            }
            else
            {
                odd.append(String(i))
            }
        }
        eventxt.text = even.joined(separator: ",")
        oddtxt.text = odd.joined(separator: ",")
    }
    
}

