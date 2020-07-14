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
