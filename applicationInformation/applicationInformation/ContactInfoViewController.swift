//
//  ContactInfoViewController.swift
//  applicationInformation
//
//  Created by Mohammad Hamudeh on 06/11/2019.
//  Copyright © 2019 Rahaf Hirbawi. All rights reserved.
//

import UIKit

class ContactInfoViewController: UIViewController {
    var userData : UserData!
    @IBOutlet weak var phoneNumber1TF: UITextField!
    @IBOutlet weak var phoneNumber2TF: UITextField!
    @IBOutlet weak var landLineTF: UITextField!
    @IBOutlet weak var addressTF: UITextField!
    @IBOutlet weak var deptTF: UITextField!
    @IBOutlet weak var jobTitleTF: UITextField!
    @IBOutlet weak var companyTF: UITextField!
    @IBOutlet weak var socialMediaTF: UITextField!
    @IBOutlet weak var socialMediaSeg: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func chooseSocialMedia(_ sender: UISegmentedControl) {
        socialMediaTF.isHidden = false
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
        switch socialMediaSeg.selectedSegmentIndex{
        case 0:
            userData.socialMediaType = .twitter
        case 1:
            userData.socialMediaType = .facebook
        case 2:
            userData.socialMediaType = .instgram
        case 3 :
            userData.socialMediaType = .websie
        default:
            break
        }
        userData.phoneNumber1 = phoneNumber1TF.text
        userData.phoneNumber2 = phoneNumber2TF.text
        userData.lendLineNumber = landLineTF.text
        userData.address = addressTF.text
        userData.department = deptTF.text
        userData.jobTitle = jobTitleTF.text
        userData.company = companyTF.text
        userData.socialMedia = socialMediaTF.text
        performSegue(withIdentifier: "toSummaryVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let summaryVC = segue.destination as! SummaryTabViewController
        summaryVC.objectData  = userData
        
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
