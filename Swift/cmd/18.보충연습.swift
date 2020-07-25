

import Foundation


// assert, guard


//정의되지 않은 플롯형을 카운트 하는 방법

//form 0.5부터 ~ to 10까지 ~ by 0.5씩 늘려가며
for i in stride(from: 0.5, to: 10.0, by: 0.5){
    print(i)
}


// 튜플의 여러가지 사용
var x:(w: String,x: Int)=("seongrok",24)
print(x.w)

//튜플의 값을 새로운 변수로 만들고 할당가능 함수에서 리턴할때도 좋음
//return ("test", 29)
var (name,age) = x
print(name)


//
var test: Int{
    get{
        return x.x
    }
}

print(test)

//접근제어
internal var a:Int? //모든 요소가 접근 가능한 코드
private var b:Int?//다른객체에서 불러올 수 없는 코드
private(set) var c:Int //다른객체에서 불러올 순 있지만 할당은 불가능한 값

//단언문
//assert(false,"false!!")


//extensions
//다른 클래스에서 변수나 함수를 추가
extension Int {
    var only: Int{
        return self+6
    }
}

print(x.x.only)
