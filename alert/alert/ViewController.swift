//
//  ViewController.swift
//  alert
//
//  Created by Siddharth Dave on 24/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "Hello", message: "Important message", preferredStyle: .actionSheet)
        let okAlert = UIAlertAction(title: "ok", style: .default)
        {
            (alert) in
            let alert2 = UIAlertController(title: "Hello", message: "Important message", preferredStyle: .alert)
            let okAlert2 = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert2.addAction(okAlert2)
            self.present(alert2, animated: true, completion: nil)
        }
        let cancel = UIAlertAction(title: "cancle", style: .cancel, handler: nil)
        alert.addAction(okAlert)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
    

}

