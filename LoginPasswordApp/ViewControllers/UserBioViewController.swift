//
//  UserBioViewController.swift
//  LoginPasswordApp
//
//  Created by jopootrivatel on 05.10.2022.
//

import UIKit

class UserBioViewController: UIViewController {

    @IBOutlet var userBioLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userBioLabel.text = name
    }

}
