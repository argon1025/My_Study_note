//
//  main.swift
//  play_g
//
//  Created by 이성록 on 2020/07/12.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation

// sum이라는 상수에 클로저를 할당
let sum: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

let sumResult: Int = sum(1, 2)
print(sumResult) // 3

//함수 전달인자로서의 클로저
//함수내부에서 원하는 코드블럭을 실행할 수 있습니다.

let add: (Int, Int) -> Int = { (a:Int, b:Int) in
    return a+b
}

//다른형태로 선언
let sub: (Int, Int) -> Int
sub = { (a:Int,b:Int) in
    return a-b
}

func calc(a:Int,b:Int,method: (Int,Int) -> Int)->Int{
    return method(a,b)
}

print(calc(a:3,b:5,method: add))



//클로저 고급

//후행 클로저
result = calc(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result) // 20

//반환타입 생략

result = calc(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})

print(result) // 20

// 후행클로저와 함께 사용할 수도 있습니다
result = calc(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}

print(result) // 20
