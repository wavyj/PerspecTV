//
//  User.swift
//  PerspecTV
//
//  Created by Justin Coleman on 3/8/17.
//  Copyright © 2017 Justin Coleman. All rights reserved.
//

import Foundation
import UIKit

class User{
    var authToken: String
    var username: String
    var id: String
    var bio: String
    var logoUrl: String
    var image: UIImage!
    
    init(authToken: String, username: String = "", id: String = "", bio: String = "", logoUrl: String = "") {
        self.authToken = authToken
        self.username = username
        self.id = id
        self.bio = bio
        self.logoUrl = logoUrl
        
        if let url = URL(string: logoUrl){
            do{
                let data = try Data(contentsOf: url)
                image = UIImage(data: data)
            }
            catch{
                print(error.localizedDescription)
            }
        }
    }
}
