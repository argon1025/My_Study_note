//
//  2.함수.swift
//  Swift_Tutorial
//
//  Created by 이성록 on 2020/07/11.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation


/*
 함수
 func 함수명(매개변수이름: 매개변수타입)-> 반환타입Void {
 
 
 함수 호출
 sum(a:3, b:5)
 voidfunc()
 hello(name:"test")
 }
 */
func sum(a: Int, b: Int) -> Int {
    return a + b
}



/*매개변수 기본값 할당*/
func greeting(name: String, age: String = "15") {
}



/*전달인자 레이블(Argument Label)*/
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}
//greeting(to: "hana", from: "yagom")



/*가변 매개변수*/
func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
//print(sayHelloToFriends(me: "yagom", friends: "hana", "eric", "wing"))
// Hello ["hana", "eric", "wing"]! I'm yagom!



/*데이터 타입으로써의 함수*/
var someFunction: (String, String) -> Void = greeting(name:age:)
