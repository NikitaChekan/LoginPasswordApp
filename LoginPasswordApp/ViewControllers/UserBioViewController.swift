//
//  UserBioViewController.swift
//  LoginPasswordApp
//
//  Created by Nikita Chekan on 05.10.2022.
//

import UIKit

class UserBioViewController: UIViewController {

    @IBOutlet var userBioLabel: UILabel!
    
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientForBackground()
        userBioLabel.text = biography
    }

}
