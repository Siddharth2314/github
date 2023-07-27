//
//  ViewController.swift
//  P-1 AreaOfRectangle
//
//  Created by Siddharth Dave on 17/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var breadth: UITextField!
    @IBOutlet weak var length: UITextField!
    
    @IBOutlet weak var anstxt: UILabel!
    @IBOutlet weak var Answer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Answer.isHidden = true
        anstxt.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func rectClick(_ sender: Any) {
        Answer.isHidden = false
        anstxt.isHidden = false
        
        var L = Int(length.text!)
        var B = Int(breadth.text!)
        
        var ans = (L!) * (B!)
        
        anstxt.text = String(ans)
        anstxt.textColor = UIColor.red
        
    }
    
}

