//
//  User data.swift
//  Lesson HW 2.6 - LogUser
//
//  Created by user246073 on 9/8/24.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: UserInfo
    
    static func getUser() -> User {
        User(
            login: "Igor",
            password: "Swift001",
            person: UserInfo.getUserInfo()
        )
    }
}
struct UserInfo {
    let name: String
    let surname: String
    let job: String
    let department: String
    let position: String
    let bioUser: String
    
    var fullNameUser: String {
        "\(name) \(surname)"
    }
    
    static func getUserInfo() -> UserInfo {
        UserInfo(
            name: "Igor",
            surname: "Kondratenko",
            job: "Kbird",
            department: "KB - Syhareva",
            position: "Engineer",
            bioUser: """
Курю! Играю в Warcraft за ханта, шинкую крабов
Я брал глада два-на-два в немодном сетапе
А ты техничен, типа Зидана, на клаве давишь две педали за холи пала
Закрой **ало, парень, здесь я папа!
Локтар О'Гар епта! Igor в ВоВе, как ОБи Ван Каноби
-
Люблю реп))
"""
        )
    }

}
