//
//  User data.swift
//  Lesson HW 2.6 - LogUser
//
//  Created by user246073 on 9/8/24.
//

struct UserInfo {
    let name: String
    let surname: String
    let job: String
    let department: String
    let position: String
    let bioUser: String
    
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
Закрой *бало, парень, здесь я папа!
Локтар О'Гар на*уй! Igor в ВоВе, как ОБи Ван Каноби
-
Люблю реп
"""
        )
    }
    
    let infoAboutUser = 
"""
Курю! Играю в Warcraft за ханта, шинкую крабов
Я брал глада два-на-два в немодном сетапе
А ты техничен, типа Зидана, на клаве давишь две педали за холи пала
Закрой *бало, парень, здесь я папа!
Локтар О'Гар на*уй! Igor в ВоВе, как ОБи Ван Каноби
-
Люблю реп
"""
}
