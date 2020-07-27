

import Foundation


// portocols

protocol someprotocol1{
    var now: Int{get set}
    init(toNow nowLInt:Int)
}

//프로토콜에 class를 상속받음으로써 구조체에서는 사용되지 않음을 의미하고 mutating를 생략할 수 있다
protocol someprotocol: class, someprotocol1 {
    var version: Int{get set}
    func setversion(to version:Int) -> Bool
}


class protocoltest: someprotocol{
    var version: Int
    
    func setversion(to version: Int) -> Bool {
        <#code#>
    }
    
    var now: Int
    
    required init(toNow nowLInt: Int) {
        <#code#>
    }
    
    
}
