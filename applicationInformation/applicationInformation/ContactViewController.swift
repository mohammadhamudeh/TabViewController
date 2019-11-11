//
//  ContactViewController.swift
//  applicationInformation
//
//  Created by Mohammad Hamudeh on 11/11/19.
//  Copyright © 2019 Rahaf Hirbawi. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
var objectData:UserData!
    @IBOutlet weak var phoneNo1: UILabel!
    @IBOutlet weak var phoneNo2: UILabel!
    @IBOutlet weak var landLine: UILabel!
    @IBOutlet weak var socialImage: UIImageView!
    @IBOutlet weak var socialLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let parentVC = parent as? SummaryTabViewController
                       objectData = parentVC?.objectData
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
        // Do any additional setup after loading the view.
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
