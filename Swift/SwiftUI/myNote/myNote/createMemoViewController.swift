//
//  createMemoViewController.swift
//  myNote
//
//  Created by 이성록 on 2020/08/05.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import UIKit
import CoreData

class createMemoViewController: UIViewController {

    @IBOutlet var memotextview: UITextView!
    @IBOutlet var memotitleview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func save(_ sender: Any) {
        
        guard let memo = memotextview.text ,
            memo.count > 0 else {
            toShortText()
                return
        }
        
        guard let title = memotitleview.text,
            title.count > 0 else {
            toShortText()
                return
        }
        
        Memo.createMemo(title: memotitleview.text,content: memotextview.text)
        
        //업데이트 알림 Notification
        NotificationCenter.default.post(name: memoListTableViewController.newMemoDidInsert, object: nil)
        
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension memoListTableViewController{
    static let newMemoDidInsert = Notification.Name(rawValue: "newMemoDidInsert")
}
