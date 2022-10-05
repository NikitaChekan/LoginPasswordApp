//
//  UserBase.swift
//  LoginPasswordApp
//
//  Created by Nikita Chekan on 04.10.2022.
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
                title: "Nikita Chekan",
                photo: "photo",
                name: "Никита",
                surname: "Чекан",
                age: "25",
                country: "Беларусь",
                contact: "@votafck",
                biography: """
Никита родился в 1997 году...
Родился в Гомеле
Родился в Гомеле
Родился в Гомеле
Родился в Гомеле
"""
            )
        )
    }
}

struct Person {
    let title: String
    let photo: String
    let name: String
    let surname: String
    let age: String
    let country: String
    let contact: String
    let biography: String
}
