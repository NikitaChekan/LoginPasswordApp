//
//  UserBase.swift
//  LoginPasswordApp
//
//  Created by Nikita Chekan on 04.10.2022.
//

//struct User {
//    let login: String
//    let password: String
//    let person: Person
//
//    static func getUser() -> User {
//        User(
//            login: "User",
//            password: "Password",
//            person: Person(
//                title: "Nikita Chekan",
//                name: "Никита",
//                surname: "Чекан",
//                age: "25"
//            )
//        )
//    }
//}
//
//struct Person {
//    let title: String
//    let name: String
//    let surname: String
//    let age: String
//}


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: .getPerson()
            )
    }
}

struct Person {
    let title: String
    let name: String
    let surname: String
    let age: String
    
    static func getPerson() -> Person {
        Person(
            title: "Nikita Chekan",
            name: "Никита",
            surname: "Чекан",
            age: "25"
        )
    }
}

