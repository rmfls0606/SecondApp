//
//  ClassStruct.swift
//  SecondApp
//
//  Created by 이상민 on 1/2/25.
//

import Foundation

//1. 가지고 있는 프로퍼티를 모두 초기화
//2. 가지고 있는 프로퍼티를 옵셔널로 선언
class Moster{
//    var clothes = "니트"
    var clothes: String
    let speed: Int
    let power: Int
    let experience: Int
    
    init(clothes: String, speed: Int, power: Int, experience: Int) {
        self.clothes = clothes
        self.speed = speed
        self.power = power
        self.experience = experience
    }
}

struct MonsterStruct{
    let clothes: String
    let speed: Int
    let power: Int
    let experience: Int
    
    //init이 없더라도 기본저그오 제공해줌 !! => 멤버 와이즈 초기화 구문
}

