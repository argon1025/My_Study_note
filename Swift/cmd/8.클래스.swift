//
//  main.swift
//  play_g
//
//  Created by 이성록 on 2020/07/12.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation


/* 클래스 */
class Student {
    // 가변 프로퍼티
    var name: String = "unknown"

    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"
    
    // 타입 메서드
    class func selfIntroduce() {
        print("학생타입입니다")
    }
    
    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생타입입니다

// 인스턴스 생성
var yagom: Student = Student()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce()   // 저는 스위프트반 yagom입니다

// 인스턴스 생성
let jina: Student = Student()
jina.name = "jina" //********** 구조체는 let타입으로 선언하면 값을 변경할 수 없지만 class는 가능하다
jina.selfIntroduce() // 저는 Swift반 jina입니다

