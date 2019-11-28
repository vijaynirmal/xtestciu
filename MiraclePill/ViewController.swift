//
//  ViewController.swift
//  MiraclePill
//
//  Created by Vijay Nirmal Jeromiyas on 23/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate,UITextFieldDelegate {

    @IBOutlet weak var countryPicker: UIPickerView!
    
    @IBOutlet weak var countryPickerButton: UIButton!
    
    
    @IBOutlet weak var zipCode: UITextField!
    
    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    
    let country = ["India","USA","Canada","AUS","NZ"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryPicker.dataSource = self
        countryPicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func countryButtonPressed(_ sender: Any) {
        
        countryPicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countryPickerButton.setTitle(country[row], for: UIControl.State.normal)
        countryPicker.isHidden = true
    }
    
    @IBOutlet weak var buyNowButton: UIImageView!
    
    
    @IBAction func onTapBuyNowButton(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
           }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let textFields : [UITextField] = [zipCode,fullName,address]
        
        for x in 0..<textFields.count{
            textFields[x].delegate = self
            textFields[x].returnKeyType = .done
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        let textFields : [UITextField] = [zipCode,fullName,address]
        
        for x in 0..<textFields.count {
        textFields[x].resignFirstResponder()
        }
        return true
    }
}

