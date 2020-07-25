//
//  Card.swift
//  Helloworld
//
//  Created by 이성록 on 2020/07/23.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation

struct Card {
    var cardId:Int
    var isFaceup:Bool = false
    var isMatched:Bool = false
    
    static var CardIdFactory:Int = 0
    
    init(){
        self.cardId = Card.getUniqueCardId()
    }
    
    private static func getUniqueCardId() -> Int {
        CardIdFactory += 1
        return CardIdFactory
    }
}
