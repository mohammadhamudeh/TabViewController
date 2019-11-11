//
//  UserDataViewController.swift
//  applicationInformation
//
//  Created by Rahaf Hirbawi on 10/30/19.
//  Copyright © 2019 Rahaf Hirbawi. All rights reserved.
//

import UIKit

class MyInformation: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var dob: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var street: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var poBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        var data = UserData()
        data.name = name.text
        data.email = email.text
        data.nickname = nickname.text
        data.gender = gender.selectedSegmentIndex == 0 ? Gender.female:Gender.male
        data.dob = dob.text
        data.city = city.text
        data.street = street.text
        data.country = country.text
        data.pobox = poBox.text
        performSegue(withIdentifier: "toContactInfo", sender: data)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as! ContactInfoViewController
        contactInfoVC.userData = sender as? UserData

    }
    @IBAction func unWindToFirst(segue:UIStoryboardSegue){
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
