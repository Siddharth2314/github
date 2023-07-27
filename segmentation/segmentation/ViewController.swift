//
//  ViewController.swift
//  segmentation
//
//  Created by Siddharth Dave on 18/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segoutlet: UISegmentedControl!
    @IBOutlet weak var answer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func seg(_ sender: Any) {
        if segoutlet.selectedSegmentIndex == 0
        {
            answer.isHidden = false
            answer.text = "Addition :"+String(10+20)
        }
        else if segoutlet.selectedSegmentIndex == 1
        {
            answer.isHidden = false
            answer.text = "MULTIPLICATION :"+String(10*20)
        }
        else if segoutlet.selectedSegmentIndex == 2
        {
            answer.isHidden = false
            var n=1
            if n%2==0
            {
                answer.text = String(n)+" is Even number"
            }
            else
            {
                answer.text = "I think its Odd"
            }
        }
        else if segoutlet.selectedSegmentIndex == 3
        {
            answer.isHidden = false
            var n1=1
            if n1%2 != 0
            {
                answer.text = String(n1)+" is Odd number"
            }
            else
            {
                answer.text = "I think its Even"
            }
        }
    }
    
}

