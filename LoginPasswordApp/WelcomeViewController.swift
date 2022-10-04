//
//  WelcomeViewController.swift
//  LoginPasswordApp
//
//  Created by Nikits Chekan on 01.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientForBackground()
        welcomeLabel.text = "Welcome, \(userName)!"
    }
    
    private func setGradientForBackground() {
        let gradient = CAGradientLayer()
        
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor.systemRed.cgColor,
            UIColor.systemBlue.cgColor
        ]
        view.layer.insertSublayer(gradient, at: 0)
    }
}
