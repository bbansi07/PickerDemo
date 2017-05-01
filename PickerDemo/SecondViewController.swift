//
//  SecondViewController.swift
//  PickerDemo
//
//  Created by iFlame on 4/18/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController,CountryDelegate {

    @IBOutlet var lblCountryName: UILabel!
    var name = ""
    //var delegate :CountryDelegate! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
      // self.delegate?.countryName(name: <#T##String#>)
       
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         lblCountryName.text = name
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func countryName(name: String) {
       self.name = name
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
