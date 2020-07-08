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

// 모든 타입을 지칭하는 키워드
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

// Any 타입에 Double 자료를 넣어두었더라도 Any는 Double 타입이 아니기 때문에 할당할 수 없습니다.
// 명시적으로 타입을 변환해 주어야 합니다. (타입 변환은 차후에 다룹니다.)
//let someDouble: Double = someAny  // 컴파일 오류발생

class SomeClass {}
var someAnyObject: AnyObject = SomeClass()

// AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에 클래스의 인스턴스가 아니면 할당할 수 없습니다.
// someAnyObject = 123.12    // 컴파일 오류발생

// someAny는 Any 타입이고, someAnyObject는 AnyObject 타입이기 때문에 nil을 할당할 수 없습니다.
// nil을 다루는 방법은 옵셔널 파트에서 다룹니다.
//someAny = nil         // 컴파일 오류발생
//someAnyObject = nil   // 컴파일 오류발생



/*
 컬렉션 타입
 */
// 1. Array 선언 및 생성
var integers: Array<Int> = Array<Int>() //빈 Array생성
var intergers1: [Int] = []//빈 Array 생성
let immutableArray = [1,2,3,4,5] //요소가 정해진 상수 Array

integers.append(1) // Array에 추가
integers.append(2) // Array에 추가
integers.contains(1) //1이라는 요소가 있는지 확인
integers.remove(at: 0) //0번째 인덱스 삭제
integers.removeLast() //마지막 요소삭제
integers.removeAll() //모든 요소 삭제
integers.count //인덱스 조회


// 1. Dictionary의 선언과 생성
// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()

// 위와 동일한 표현
// var anyDictionary: Dictionary <String, Any> = Dictionary<String, Any>()
// var anyDictionary: Dictionary <String, Any> = [:]
// var anyDictionary: [String: Any] = Dictionary<String, Any>()
// var anyDictionary: [String: Any] = [String: Any]()
// var anyDictionary: [String: Any] = [:]
// var anyDictionary = [String: Any]()


// 2. Dictionary 활용
// 키에 해당하는 값 할당
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary) // ["someKey": "value", "anotherKey": 100]

// 키에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
print(anyDictionary) //["someKey": "dictionary", "anotherKey": 100]

// 키에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary)


// 3. 불변 Dictionary: let을 사용하여 Dictionary 선언
let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

// 불변 Dictionary이므로 값 변경 불가
//emptyDictionary["key"] = "value"

// 키에 해당하는 값을 다른 변수나 상수에 할당하고자 할 때는 옵셔널과 타입 캐스팅 파트에서 다룹니다
// "name"이라는 키에 해당하는 값이 없을 수 있으므로 String 타입의 값이 나올 것이라는 보장이 없습니다.
// 컴파일 오류가 발생합니다
// let someValue: String = initalizedDictionary["name"]

// 1. Set 생성 및 선언
var integerSet: Set<Int> = Set<Int>()

// insert : 새로운 멤버 입력
// 동일한 값은 여러번 insert해도 한번만 저장됩니다.
integerSet.insert(1)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(100)

print(integerSet) // {100, 99, 1}

// contains: 멤버 포함 여부 확인
print(integerSet.contains(1)) // true
print(integerSet.contains(2)) // false

// remove: 멤버 삭제
integerSet.remove(99) // {100, 1}
integerSet.removeFirst() // {1}

// count: 멤버 개수
integerSet.count // 1


// 2. Set의 활용
// 멤버의 유일성이 보장되기 때문에 집합 연산에 활용하면 유용합니다.
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union) // [2, 4, 5, 6, 7, 3, 1]

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [5, 3, 4]

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) // [2, 1]
