

import Foundation


//tests 배열의 선언
var Test1 = [true,false,true,false,true,false]
var Test2 = [1,2,3]

//계수가능 범위
print(Test1.indices)

//값이 참일경우 리턴
print(Test1.indices.filter {Test1[$0]})

//조건식의 사용
print(Test2.indices.filter { Test2[$0] == 2 })

//확장기능으로 구현
//하나의 요소만 있을경우 해당요소를 리턴한다
print(Test2.indices.filter { Test2[$0] == 2 }.testcode)

//타입의 확장
extension Collection{
    var testcode: Element?{ //제네릭 타입
        //카운트는 컬렉션의 메서드이고 개수를 반환한다
        //first는 첫번째 요소를 리턴한다
        return count == 1 ? first : nil
    }
}
