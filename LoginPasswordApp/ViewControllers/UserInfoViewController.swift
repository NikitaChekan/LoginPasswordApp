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
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var contactLabel: UILabel!
    
    @IBOutlet var userPhoto: UIImageView!
    
    var userDataBase: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientForBackground()
        
        guard let person = userDataBase else { return }
        userPhoto.image = UIImage(named: "\(person.photo)")
        
        nameLabel.text = "Имя: \(person.name)"
        surnameLabel.text = "Фамилия: \(person.surname)"
        ageLabel.text = "Возраст: \(person.age)"
        countryLabel.text = "Страна: \(person.country)"
        contactLabel.text = "Telegram: \(person.contact)"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        userPhoto.layer.cornerRadius = userPhoto.frame.size.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        
        guard let person = userDataBase else { return }
        userBioVC.biography = person.biography
        userBioVC.title = "\(person.title) bio:"
    }

}
