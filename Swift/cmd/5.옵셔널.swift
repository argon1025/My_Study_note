//
//  5.옵셔널.swift
//  Swift_Tutorial
//
//  Created by 이성록 on 2020/07/11.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation

/* !를 이용한 암시적 추출 옵셔널 */
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1



/* ?를 이용한 옵셔널 */
// Optional
var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue = optionalValue + 1



/* 옵셔널 추출 */

/*
 옵셔널 바인딩
 
 1. nil 체크 + 안전한 추출
 2. 옵셔널 안에 값이 들어있는지 확인하고 값이 있으면 값을 꺼내옵니다.
 3. if-let 방식 사용
 */

//if-let 방식
var myName: String? = nil
var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}


/*
 강제 추출
 셔널에 값이 들어있는지 아닌지 확인하지 않고 강제로 값을 꺼내는 방식, 만약 값이 없을경우(nil) 런타임 오류가 발생하기 때문에 추천되지 않습니다.
 */
var myName: String? = yagom
var youName: String! = nil


printName(myName!) // myName! < 강제추출구문
myName = nil

//print(myName!)
// 강제추출시 값이 없으므로 런타임 오류 발생
yourName = nil

//printName(yourName) //암시적 옵셔널 방식으로 선언된 변수일경우 !구문을 붙인것과같은 강제추출이 행해진다
// nil 값이 전달되기 때문에 런타임 오류발생
