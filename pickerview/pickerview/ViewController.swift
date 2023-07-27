//
//  ViewController.swift
//  pickerview
//
//  Created by Siddharth Dave on 21/07/23.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    var myarr = ["Red","Green","Blue"]
    @IBOutlet weak var mypickerview: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mypickerview.delegate = self
        self.mypickerview.dataSource = self
        
        
           // self.view.backgroundColor = UIColor.red
        
        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myarr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myarr[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if myarr[row] == "Red"
        {
            self.view.backgroundColor = UIColor.red
        }
    }
    
}

