//
//  ViewController.swift
//  NavImageTool
//
//  Created by Siddharth Dave on 21/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labeltxt: UILabel!
    @IBOutlet weak var pencil: UIBarButtonItem!
    @IBOutlet weak var image: UIBarButtonItem!
    @IBOutlet weak var share: UIBarButtonItem!
    @IBOutlet weak var erase: UIBarButtonItem!
    @IBOutlet weak var call: UISegmentedControl!
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        labeltxt.isHidden = true
        imageview.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func callAction(_ sender: Any) {
        labeltxt.isHidden = false
        imageview.isHidden = true
        if call.selectedSegmentIndex == 0
        {
            labeltxt.text = "Call List Page"
        }
        else if call.selectedSegmentIndex == 1
        {
            labeltxt.text = "Missed Call List Page"
            labeltxt.textColor = UIColor.red
        }
    }
    @IBAction func pencilAction(_ sender: Any) {
        labeltxt.isHidden = false
        imageview.isHidden = true
        labeltxt.text = "Update Page"
    }
    
    @IBAction func shareAction(_ sender: Any) {
        labeltxt.isHidden = false
        imageview.isHidden = true
        labeltxt.text = "Share Page"
    }
    @IBAction func imageAction(_ sender: Any) {
        labeltxt.isHidden = true
        imageview.isHidden = false
    }
    @IBAction func eraseAction(_ sender: Any) {
        labeltxt.isHidden = false
        imageview.isHidden = true
        labeltxt.text = "Erase Page"
    }
}

