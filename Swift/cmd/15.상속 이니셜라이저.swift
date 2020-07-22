

import Foundation


// 상속과 이니셜라이저 디이니셜라이저

class Animal{
    var name: String
    var age:Int
    var test: String? //옵셔널 -> 값이 없어도 된다
    
    init(name:String,age:Int){ //이니셜라이저
        self.name = name
        self.age = age
    }
    convenience init(name:String,age:Int,test:String) { //프로퍼티의 초기값이 꼭 필요없을때 옵셔널을 사용하고 class 내부의 init을 사용할때는 convenience 키워드 사용
        self.init(name: name,age: age)
        self.test = test
    }
    deinit { //인스턴스가 메모리에서 해제되는 시점에 자동 호출
        print("Animal 메모리해제")
    }
    
    func Hello(){
        print("Animal Hello \(name) \(age)")
    }
    final func aniamlinfo(){ //추후 상속받아 수정이 불가능한 FINAL
        print("Animal Hello \(name) \(age)")
    }
}

class Person: Animal{
    var nickname:String
    
    init(name:String,age:Int,nickname:String){
        self.nickname = nickname
        super.init(name: name, age: age)
    }

    override func Hello() { //Animal에서 선언된 메서드 오버라이드
        print("Hello \(name) \(age) \(nickname)")
    }
}

var test: Person? = Person(name:"test",age:10,nickname:"성록")
test?.Hello()
test = nil

