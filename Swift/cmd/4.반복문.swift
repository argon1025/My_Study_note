//
//  4.반복문.swift
//  Swift_Tutorial
//
//  Created by 이성록 on 2020/07/11.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation


/* for문 */
let people = ["yagom": 10, "eric": 15, "mike": 12]
// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}


/* while */
while integers.count > 1 {
    integers.removeLast()
}


/* do-while */
repeat {
    integers.removeLast()
} while integers.count > 0
