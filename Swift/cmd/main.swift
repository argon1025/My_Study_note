//
//  main.swift
//  Swift_Tutorial
//
//  Created by 이성록 on 2020/07/08.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation
import Swift

/*
 [상수와 변수]
 띄어쓰기에 주의!
 */
//상수 let 이름:타입 = 값
let num: Int = 10

//변수 var 이름:타입 = 값
var num1: Int = 11

//값의 타입이 명확하다면 타입을 생략할 수 있음
let num2 = 12
var num3 = 13

//선언만 미리 해두는 법
let num4: Int
num4 = 1
print("Hello, World! \(num)")
print("Hello, World! \(num) \(num4)")

/*
Swift의 기본 데이터 타입
 Bool
 Int, UInt
 Float, Double
 Character, String
 */

var someBool: Bool = true
someBool = false
// someBool = 0 // 컴파일 오류발생
// someBool = 1 // 컴파일 오류발생

// Int 정수
var someInt: Int = -100
// someInt = 100.1 // 컴파일 오류발생

//UInt 양의정수
var someUInt: UInt = 100
// someUInt = -100 // 컴파일 오류발생
// someUInt = someInt // 컴파일 오류발생

// Float 실수 타입. 32비트 부동소수형.
var someFloat: Float = 3.14
someFloat = 3

// Double 실수 타입. 64비트 부동소수형
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 컴파일 오류발생

// Character 문자 타입. 유니코드 사용. 큰따옴표("") 사용.
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" // 컴파일 오류발생
print(someCharacter)

// String 문자열 타입. 유니코드 사용. 큰따옴표("") 사용.
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

// someString = someCharacter // 컴파일 오류발생
