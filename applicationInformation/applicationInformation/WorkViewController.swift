//
//  WorkViewController.swift
//  applicationInformation
//
//  Created by Mohammad Hamudeh on 11/11/19.
//  Copyright © 2019 Rahaf Hirbawi. All rights reserved.
//

import UIKit

class WorkViewController: UIViewController {
    var objectData:UserData!
   
    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var deparment: UILabel!
    @IBOutlet weak var companyAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let parentVC = parent as? SummaryTabViewController
                          objectData = parentVC?.objectData
        company.text = "\(company.text!) \(objectData.company!)"
        jobTitle.text = "\(jobTitle.text!) \(objectData.jobTitle!)"
        deparment.text = "\(deparment.text!) \(objectData.department!)"
        companyAddress.text = "\(companyAddress.text!) \(objectData.address!)"
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
