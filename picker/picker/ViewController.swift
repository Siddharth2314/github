//
//  ViewController.swift
//  picker
//
//  Created by Siddharth Dave on 24/07/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var arr = ["Red", "green", "blue","image"]
    @IBOutlet weak var labeltxt: UILabel!
//    @IBOutlet weak var labelimg: UIImageView!
    @IBOutlet weak var pickerBar: UIBarButtonItem!
    @IBOutlet weak var image: UIImageView!
//    @IBOutlet weak var navbar: UIPickerView!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var toolbar: UIToolbar!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.isHidden = true
        self.picker.delegate = self
        labeltxt.isHidden = true
        pickerBar.tintColor = UIColor.black
        pickerBar.isHidden = true
        self.picker.dataSource = self
        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if arr[row] == "Red"
        {
            labeltxt.text = "Red Page"
            labeltxt.isHidden = false
            image.isHidden = true
            picker.isHidden = true
            pickerBar.isHidden = false
            toolbar.barTintColor = UIColor.red
            self.view.backgroundColor = UIColor.red
        }
        else if arr[row] == "green"
        {
            labeltxt.isHidden = false
            labeltxt.text = "Green Page"
            image.isHidden = true
            picker.isHidden = true
            pickerBar.isHidden = false
            toolbar.barTintColor = UIColor.green
            self.view.backgroundColor = UIColor.green
        }
        else if arr[row] == "blue"
        {
            labeltxt.isHidden = false
            pickerBar.isHidden = false
            labeltxt.text = "Blue Page"
            toolbar.barTintColor = UIColor.blue
            picker.isHidden = true
            image.isHidden = true
            self.view.backgroundColor = UIColor.blue
        }
        else if arr[row] == "image"
        {
            labeltxt.isHidden = false
            pickerBar.isHidden = false
            toolbar.barTintColor = UIColor.white
            picker.isHidden = true
            self.view.backgroundColor = UIColor.white
            image.isHidden = false
            image.alpha = 0.8
        }
        
        
    }
    @IBAction func barPickerAction(_ sender: Any) {
//        picker.isHidden = false
        if picker.isHidden
        {
            picker.isHidden = false
            pickerBar.isHidden = true
        }
        else
        {
            picker.isHidden = true
            pickerBar.isHidden = false
        }
    }
}

