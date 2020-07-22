

import Foundation


// 예제 클래스
// 사람 클래스
class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}
// 사람이 사는 집 클래스
class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

var sungrok:Person? = Person(name:"성록")
var ap:Apartment? = Apartment(dong:"103",ho: "1")

if let name = sungrok?.name{
    print(name)
}

sungrok?.job = "대학생"
if let name = sungrok?.job{
    print(name)
}

sungrok?.home = ap
if let name = sungrok?.home?.buildingNumber{ //옵셔널 체이싱
    print(name)
}


//nil 병합 연산자
//옵셔널값이 nil 일경우 우측의 값을 반환합니다
print(sungrok?.home?.guard ?? "경비원이 존재하지 않습니다.")
