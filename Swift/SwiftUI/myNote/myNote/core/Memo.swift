//
//  Memo.swift
//  myNote
//
//  Created by 이성록 on 2020/08/05.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import Foundation

class Memo{
    private(set) var memoData = [memos]()
    
    init() {
        memoData.append(memos(title: "test",content: "content"))
    }
    
    func createMemo(title: String,content: String){
        memoData.append(memos(title: title,content: content))
    }
    
}
struct memos {
    var title:String
    var content:String
    var date:Date
    
    init(title: String,content: String){
        self.title = title
        self.content = content
        self.date = Date()
    }
}
