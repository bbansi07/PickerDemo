//
//  ViewController.swift
//  PickerDemo
//
//  Created by iFlame on 4/18/17.
//  Copyright © 2017 iFlame. All rights reserved.
//
//http://stackoverflow.com/questions/19343519/pass-data-back-to-previous-viewcontroller/33229483#33229483

import UIKit
protocol CountryDelegate {
    func countryName(name:String)
}

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate {

    
    @IBOutlet var txtSelect: UITextField!
    
    @IBOutlet var btnSend: UIButton!
    var pickerData : [String] = [String]()
    var delegate : CountryDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerData = ["India","USA","Pakistan","Shrilanka","China"]
        
        let pickerView = UIPickerView()
        pickerView.delegate = self
        txtSelect.inputView = pickerView
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        return true
//    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
       return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtSelect.text = pickerData[row]
       
        //txtSelect.resignFirstResponder()
        
    }
    
    @IBAction func btnPressed(_ sender: UIButton){
       // delegate?.countryName(name: "\(txtSelect.text!)")
        self.performSegue(withIdentifier: "passCountry", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       
        
      //  if segue.identifier == "passCountry"{
         if let controller = segue.destination as? CountryDelegate{
            controller.countryName(name: txtSelect.text!)
            }
           // vc.delegate = self as! CountryDelegate
            
            
    //}
    
    }
}

