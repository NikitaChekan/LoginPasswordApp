//
//  ViewController.swift
//  LoginPasswordApp
//
//  Created by Nikita Chekan on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!

    private var userName = "User"
    private var password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.welcomeUser = userNameTF.text
    }
    
    @IBAction func loginButtonTapped() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password!",
                message: "Please, enter correct login and password."
            )
            passwordTF.text = ""
        }
    }

    @IBAction func userNameForgotButtonTapped() {
        showAlert(
            title: "Hmmm...",
            message: "Okey, your name - User"
        )
    }
    
    @IBAction func passwordForgotButtonTapped() {
        showAlert(
            title: "Hmmm...",
            message: "Okey, your password - Password"
        )
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

