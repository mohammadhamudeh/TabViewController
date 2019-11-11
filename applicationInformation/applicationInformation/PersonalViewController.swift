//
//  PersonalViewController.swift
//  applicationInformation
//
//  Created by Mohammad Hamudeh on 11/11/19.
//  Copyright © 2019 Rahaf Hirbawi. All rights reserved.
//

import UIKit

class PersonalViewController: UIViewController {
    var objectData:UserData!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var gender: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let parentVC = parent as? SummaryTabViewController
         objectData = parentVC?.objectData
        nameLabel.text = "\(nameLabel.text!) \(objectData.name!)"
               nickName.text = "\(nickName.text!) \(objectData.nickname!)"
               email.text = "\(email.text!) \(objectData.email!)"
               gender.text = "\(gender.text!) \(objectData.gender == .male ? "Male" : "Female")"
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
