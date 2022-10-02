//
//  WelcomeViewController.swift
//  LoginPasswordApp
//
//  Created by Nikits Chekan on 01.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, " + welcomeUser + "!"
        
    }

    @IBAction func LogOutButtonDidTapped() {
        dismiss(animated: true)
    }
}
