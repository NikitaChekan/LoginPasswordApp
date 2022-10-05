//
//  WelcomeViewController.swift
//  LoginPasswordApp
//
//  Created by Nikita Chekan on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientForBackground()
        welcomeLabel.text = "Welcome, \(userName)!"
    }
}

extension UIView {
    func setGradientForBackground() {
        let gradient = CAGradientLayer()
        
        gradient.frame = bounds
        gradient.colors = [
            UIColor.systemGreen.cgColor,
            UIColor.systemBlue.cgColor
        ]
        layer.insertSublayer(gradient, at: 0)
    }
}
