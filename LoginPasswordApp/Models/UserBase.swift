//
//  UserBase.swift
//  LoginPasswordApp
//
//  Created by jopootrivatel on 04.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                title: "Никита Чекан",
                name: "Никита",
                sername: "Чекан",
                age: 25)
        )
    }
}

struct Person {
    let title: String
    let name: String
    let sername: String
    let age: Int
}
