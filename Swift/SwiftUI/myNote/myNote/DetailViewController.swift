//
//  DetailViewController.swift
//  myNote
//
//  Created by 이성록 on 2020/08/06.
//  Copyright © 2020 Leesungrok. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var memo: memos?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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


extension DetailViewController: UITableViewDataSource{
    //호출해야하는 셀 수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    //셀 숫자대로 테이블 뷰를 업데이트
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let target = tableView.dequeueReusableCell(withIdentifier: "memotitle", for: indexPath)
            target.textLabel?.text = memo?.title
            return target
        case 1:
            let target = tableView.dequeueReusableCell(withIdentifier: "memodetail", for: indexPath)
            target.textLabel?.text = memo?.content
            return target
        default:
            fatalError()
        }
        
        
    }
}
