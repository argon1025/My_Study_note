//
//  ViewController.swift
//  Helloworld
//
//  Created by 이성록 on 2020/07/23.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var score:Int = 0 {
        didSet{
            scoreLable.text = "\(score)회 뒤집었습니다"
        }
    }
    
    @IBOutlet weak var scoreLable: UILabel!
    // lazy 사용 초기화 didset 관찰자 사용불가
    lazy var game:Concentration = Concentration(numberOfPairsCards: cardButtons.count / 2)
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardindex = cardButtons.index(of: sender){
            game.chooseCard(at: cardindex) //카드 선택 이벤트
            updateViewModel() // 카드 UI 업데이트
            score += 1
        }
    }
    
    func updateViewModel(){
        for index in cardButtons.indices{ //모든 카드 버튼을 대상으로
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if card.isFaceup {
                button.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                button.setTitle(emoji(of: game.cards[index].cardId), for: UIControl.State.normal)
            } else {
                button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
                button.setTitle("❖", for: UIControl.State.normal)
            }
            
            if card.isMatched{
                button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                button.setTitle("✔︎", for: UIControl.State.normal)
            }
        }
    }
    
    //TODO: imoji return
    func emoji(of index:Int) -> String{
        let emojiChoice = ["","★","⎈","〒","⏣","⌚︎","◎","✚","☻","☂︎","✣"]
        return emojiChoice[index]
    }
    
}

