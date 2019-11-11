//
//  File.swift
//  applicationInformation
//
//  Created by Rahaf Hirbawi on 10/30/19.
//  Copyright © 2019 Rahaf Hirbawi. All rights reserved.
//

import Foundation
enum Gender{
    case female
    case male
    
}
    enum SocialMedia{
        case twitter
        case facebook
        case instgram
        case websie
    }

struct UserData {
    var name:String!
    var email:String!
    var nickname:String!
    var gender:Gender!
    var dob:String!
    var city:String!
    var street:String!
    var country:String!
    var pobox:String!
    var phoneNumber1:String!
    var phoneNumber2:String!
    var lendLineNumber:String!
    var socialMedia:String!
    var socialMediaType:SocialMedia!
    var company:String!
    var jobTitle:String!
    var department:String!
    var address:String!
    
}
