//
//  UserInfoViewController.swift
//  LoginPasswordApp
//
//  Created by Nikita Chekan on 04.10.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    var userDataBase: Person?
    
//    var name = ""
//    var surname = ""
//    var age = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let person = userDataBase else { return }
        nameLabel.text = "Имя: \(person.name)"
        surnameLabel.text = person.surname
        ageLabel.text = person.age
        
//        nameLabel.text = "Имя: \(name)"
//        surnameLabel.text = "Фамилия: \(surname)"
//        ageLabel.text = "Возраст: \(age)"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        guard let person = userDataBase else { return }
        userBioVC.name = person.surname
        userBioVC.title = "\(person.surname) biography"
    }

}
