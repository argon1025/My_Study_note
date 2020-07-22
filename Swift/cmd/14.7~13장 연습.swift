

import Foundation


struct Student{
    let version:Float = 0.1
    static var passcode:Int = 1
    var name:String = "unknown"
    var `class`:String = "Swift"
    
    
    func now(){
        print("현재 버전은 \(version) \(`class`) \(name)입니다.")
    }
}

var test: Student = Student()
test.now()
print(Student.passcode)




class StudentClass{
    let version: Float = 0.2
    var name:String = "Sungrok"
    var `class`:String = "Swift"
    
    
    //상속했을때 재정의가 불가능한 메서드
    static func typeMethod(){
        print("version")
    }
    
    //상속했을때 재정의가 가능한 메서드
    func classMethod(){
        print(self.version)
    }
}
var testclass: StudentClass = StudentClass()
testclass.classMethod()


//열거형 연습
enum Week{
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
    
    func printWeek(){ //메서드 추가 가능
        switch self {
        case .mon:
            print("월요일 입니다")
        default:
            print("모릅니다")
        }
    }
}

var todayWeek:Week = Week.mon
print(todayWeek)
todayWeek.printWeek()

switch todayWeek{
case .mon:
    print("월요일 입니다.")
default:
    print("모릅니다")
}

//원시값이 들어간 열거형
enum ErrorCode: Int{
    case lostconn=0
    case errorconn
}
print(ErrorCode.lostconn.rawValue) //0

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university // 원시값으로 university가 자동으로 들어감
}

if let orange: School = School(rawValue: "고등") {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
} // rawValue 5에 해당하는 케이스가 없습니다


//클로저
func calc(a:Int,b:Int,callback:(Int, Int)->Int)->Int{
    return callback(a,b)
}

//클로저가 함수의 마지막 인자라면 매개변수 이름을 생략한후에 외부에서 구현가능
var result = calc(a:10,b:10){(a:Int,b:Int) -> Int in
    return a+b
}

print(result)

//반환 타입을 생략가능
result = calc(a:20,b:10){(a:Int,b:Int) in
    return a+b
}
print(result)

//매개변수 생략 가능
result = calc(a:40,b:10){
    return $0+$1
}
print(result)

//암시적으로 반환표현 가능
result = calc(a:40,b:10){$0+$1}
print(result)


//연산 프로퍼티, 감시자 프로퍼티
struct Money {
    var version: Int = 1 {
        willSet{
            print("잠시후 \(version)에서 \(newValue)로 버전이 변경됩니다")
        }
        didSet{
            print("\(oldValue)에서 \(version)으로 변경되었습니다")
        }
    }
    
    var doller:Double = 0 {
        willSet{
            print("지갑의 가치가 \(newValue)로 변경됩니다")
        }
        didSet{
            print("성공적으로 가치가 변경되었습니다")
        }
    }
    var won:Double{
        get{
            return doller*1000
        }
        set{
            doller = newValue * 0.001
        }
    }
}

var testmoney = Money()
testmoney.version = 2
testmoney.won = 1000
print(testmoney.won)
