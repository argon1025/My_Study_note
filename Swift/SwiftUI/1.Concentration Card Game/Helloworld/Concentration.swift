//
//  Concentration.swift
//  Helloworld
//
//  Created by 이성록 on 2020/07/23.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation

class Concentration
{
    private(set) var cards = [Card]()
    var cardOpen:Int?
    
    init(numberOfPairsCards: Int){
        for _ in 0..<numberOfPairsCards {
            print("카드 생성 \(numberOfPairsCards)")
            let card = Card()
            //cards.append(card)
            cards += [card, card]
        }
        shuffleCard()
    }
    
    func chooseCard(at index: Int){
        
        
        if !cards[index].isFaceup
        {
            // TODO: 카드를 오픈했을때 이전에 오픈한 카드가 있을경우
            if let beforindex = cardOpen{
                if index != beforindex{
                    if cards[index].cardId==cards[beforindex].cardId{ //서로의 카드의 ID부분이 일치할경우
                        print("정답인 \(index)인덱스의 카드를 열었음")
                        cards[index].isMatched = true
                        cards[beforindex].isMatched = true
                        cardOpen = nil
                    } else { //ID가 불일치 할경우
                        print("틀린 \(index)인덱스의 카드를 열었음")
                        cardOpen = nil
                        cards[index].isFaceup = true
                    }
                }
                
            } else { //오픈된 카드가 없었을경우
                for index in 0..<cards.count{ //기존 열었던 카드들을 덮음
                    if !cards[index].isMatched{
                        cards[index].isFaceup = false
                    }
                }
                print("오픈된 카드 없이 \(index)인덱스의 카드를 열었음")
                cards[index].isFaceup = true //지금 뒤집은 카드
                cardOpen = index //이전에 뒤집은 카드 기록에 저장
            }
        } else {
            print("카드가 열린상태임")
            for index in 0..<cards.count{ //기존 열었던 카드들을 덮음
                if !cards[index].isMatched{
                    cards[index].isFaceup = false
                }
            }
            cards[index].isFaceup = true //지금 뒤집은 카드
            cardOpen = index //이전에 뒤집은 카드 기록에 저장
        }
        
    }
    
    //TODO : Shuffle the Cards
    func shuffleCard(){
        cards.shuffle()
    }
}
