

import Foundation


// assert, guard

var someInt: Int = 0
var age: Int?
// 검증 조건과 실패시 나타날 문구를 작성해 줍니다
// 검증 조건에 부합하므로 지나갑니다
assert(someInt == 0, "someInt != 0")

someInt = 1

//assert(someInt == 0, "someInt == 0") //Stop "someInt == 0"


func functionWithGuard(age: Int?) {
    
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }
    
    print("당신의 나이는 \(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}
