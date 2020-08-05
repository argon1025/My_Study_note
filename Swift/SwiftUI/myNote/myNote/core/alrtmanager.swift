//
//  alrtmanager.swift
//  myNote
//
//  Created by 이성록 on 2020/08/05.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import UIKit

extension UIViewController{
    func toShortText(){
        let alert =  UIAlertController(title: "알림", message: "텍스트의 길이가 너무 짧아요!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "네!", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
