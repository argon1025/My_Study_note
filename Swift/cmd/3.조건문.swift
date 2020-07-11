//
//  3.조건문.swift
//  Swift_Tutorial
//
//  Created by 이성록 on 2020/07/11.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation
//https://swift.org


/* 조건문을 감싸는 괄호는 생략가능*/

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100
