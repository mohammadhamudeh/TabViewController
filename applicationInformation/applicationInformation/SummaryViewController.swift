//
//  SummaryViewController.swift
//  applicationInformation
//
//  Created by Mohammad Hamudeh on 04/11/2019.
//  Copyright © 2019 Rahaf Hirbawi. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    var objectData:UserData!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var fullAddress: UILabel!
    @IBOutlet weak var phoneNo1: UILabel!
    @IBOutlet weak var phoneNo2: UILabel!
    @IBOutlet weak var landLine: UILabel!
    @IBOutlet weak var socialImage: UIImageView!
    @IBOutlet weak var socialLabel: UILabel!
    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var deparment: UILabel!
    @IBOutlet weak var companyAddress: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "\(nameLabel.text!) \(objectData.name!)"
        nickName.text = "\(nickName.text!) \(objectData.nickname!)"
        email.text = "\(email.text!) \(objectData.email!)"
        gender.text = "\(gender.text!) \(objectData.gender == .male ? "Male" : "Female")"
        fullAddress.text = "\(fullAddress.text!): \(objectData.city!),  \(objectData.street!), \(objectData.country!), \(objectData.pobox!)"
        phoneNo1.text  = "\(phoneNo1.text!) \(objectData.phoneNumber1!)"
        phoneNo2.text  = "\(phoneNo2.text!) \(objectData.phoneNumber2!)"
        landLine.text = "\(landLine.text!) \(objectData.lendLineNumber!)"
        switch objectData.socialMediaType{
        case .facebook:
            socialImage.image = UIImage(named: "facebook")
        case .twitter:
            socialImage.image = UIImage(named: "twitter")
        case .instgram:
            socialImage.image = UIImage(named: "instagram ")
        case .websie:
            socialImage.image = UIImage(named: "worldwide")
        case .none:
            break
        }
        socialLabel.text = "\(objectData.socialMedia!)"
        company.text = "\(company.text!) \(objectData.company!)"
        jobTitle.text = "\(jobTitle.text!) \(objectData.jobTitle!)"
        deparment.text = "\(deparment.text!) \(objectData.department!)"
        companyAddress.text = "\(companyAddress.text!) \(objectData.address!)"
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func gotToOne(_ sender: Any) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("Summary View will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("Summary View did disappear ")
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
