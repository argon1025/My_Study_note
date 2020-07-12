//
//  main.swift
//  play_g
//
//  Created by 이성록 on 2020/07/12.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation


//상수 변수 테스트
//let let_name:String = "이성록"
//var var_name:String = "이성록1"

//print("let \(let_name) , var \(var_name)")

//선언만 미리 해두기
//let var_name_1:String
//var_name_1 = "asd"
//var_name_1 = "asd1" //상수이기때문에 초기값넣으면 안바뀜
//print("\(var_name_1)")

//타입 생략
//let let_name = "이성록"
//var var_name = "이성록1"
//var_name = 123 //only String
//print("\(let_name)\(var_name)")

var booltype:Bool = true // 0 1 안됨
var uinttype:UInt = 100 // + 정수만 가능
var floattype:Float = 3.144444444444 //32비트 실수
var doubletype:Double = 3.14444444444444 //64비트 부동소수
var charactertype:Character = "🇰🇷" //문자 하나 유니코드타입
var stringtype:String = "😄😄" //문자열 유니코드타입
stringtype = stringtype + "가능"
var anytype:Any = 100 //어떠한 타입도 수용가능
anytype = stringtype
anytype = floattype
//anytype = nil //null값은 any타입에 속할 수 없음
//floattype = anytype //에러. 애니타입에 float자료를 넣더라도 any타입이 float타입이 아님으로 형변환을 해야함
class Classtype {} //빈 클래스
var anyobjecttype: AnyObject = Classtype()
//AnyObject = 3.14; AnyObject=13 ; AnyObject=nil // 컴파일에러


//stringtype = charactertype 컴파일 오류
//floattype = doubletype
//doubletype = floattype
//charactertype = stringtype


/* 컬렉션 타입 */

//array 다양한 표현
var arraytype : Array<Int> = Array<Int>() //빈 array
var arraytype1 : [Int] = [] //빈 array
var arraytype2 : [Int] = [1,2,3,4]
let arraytype3 = [1,2,3,4] //상수 타입 array

/*
arraytype2[0] = 3
arraytype2.append(4) // array 뒤에 값 추가
print(arraytype2.contains(23))//2 라는 요소가 있는지 확인
arraytype2.remove(at: 0)//0번째 인덱스 삭제
arraytype2.removeLast() //마지막 인덱스 삭제
arraytype2.removeAll()//전체요소 삭제
print(arraytype2.count) //전체 인덱스 반환

for i in 0...arraytype2.count{ //0~요소까지
    print("hi \(i)")
}
print(arraytype2)
*/



//dictionary 다양한 표현
var dictionarytype1:Dictionary<String,String> = [String: String]() //빈 dictionary 생성
var dictionarytype2:Dictionary<String, Any> = Dictionary<String, Any>()
var dictionarytype3: [String: Any] = Dictionary<String, Any>()
var dictionarytype4 = ["lol":"lol2","lol2":"lol3"]
var dictionarytype5: [String: Any] = [:]
var dictionarytype6 = [String: Any]()
let dictionarytype7:[String:String] = [:] //불변 딕셔너리

/*
dictionarytype4["lol2"] = "test"
print(dictionarytype4["lol2"])

dictionarytype1["test1"] = "String"
print(dictionarytype1["test1"]!)
dictionarytype1.removeValue(forKey: "test1")
dictionarytype4["lol2"] = nil

*/


//set
//동일한 값을 가지지 않는 배열

var settype1: Set<Int> = Set<Int>()

/*
settype1.insert(1)
settype1.insert(2)
settype1.insert(1)
settype1.insert(1)
settype1.sorted() //정렬
print(settype1) //2,1

*/


var value: Int = 3

if(value==10){
    print("v == 10")
} else if(value > 10){
    print("v > 10")
} else {
    print("v < 10")
}

switch value{
case 0:
    print("0")
case 1:
    print("1")
case 2...4:
    print("2~4")
default:
    print("defal")
}

var optionaltype1 : Optional<Int>
var optionaltype2: Int! = 10

switch optionaltype2{
case .none:
    print("none")
case .some(let value):
    print(value)
}

var optionaltype3 : Optional<Int>
var optionaltype4: Int?

//optionaltype2 = optionaltype2 + 1 //쓰레드 에러 발생
//optionaltype4 = optionaltype4 + 1 //빌드실패

//안전한 옵셔널 추출
if let name = optionaltype2,let name2=optionaltype4{
    print(name)
    print(name2)
}
print(optionaltype2!) // 옵셔널 강제추출
