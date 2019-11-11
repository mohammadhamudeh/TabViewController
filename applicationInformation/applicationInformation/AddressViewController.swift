//
//  AddressViewController.swift
//  applicationInformation
//
//  Created by Mohammad Hamudeh on 11/11/19.
//  Copyright © 2019 Rahaf Hirbawi. All rights reserved.
//

import UIKit

class AddressViewController: UIViewController {
    var objectData:UserData!
    @IBOutlet weak var fullAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let parentVC = parent as? SummaryTabViewController
                objectData = parentVC?.objectData
        fullAddress.text = "\(fullAddress.text!): \(objectData.city!),  \(objectData.street!), \(objectData.country!), \(objectData.pobox!)"
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
