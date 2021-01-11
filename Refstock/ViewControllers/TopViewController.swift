//
//  TopViewController.swift
//  Refstock
//
//  Created by Mika Miyakawa on 2021/01/11.
//

import UIKit

class TopViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var todayLabel: UILabel!
    @IBOutlet weak var refTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackground(name: "ref_back")
        todayLabel.text = formatToday()
        refTableView.register (UINib(nibName: "RefMemoTableViewCell", bundle: nil),forCellReuseIdentifier:"refMemoTableViewCell")
    }
    
    // テーブルの行数を指定するメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
 
    // ④セルの中身を設定するメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "refMemoTableViewCell", for: indexPath) as! RefMemoTableViewCell
        cell.refMemoData(count: indexPath)
        return cell
    }
}
