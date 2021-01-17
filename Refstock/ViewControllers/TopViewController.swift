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
    var CountryList = ["アメリカ", "中国", "日本", "ドイツ", "イギリス"]
    let imageDatas = ["milk_bin","milk_ichigo","ponzu","shirodashi","toubanjan"]
    let titleDatas = ["牛乳","イチゴ牛乳","ポン酢","白だし","豆板醤"]
    let memoDatas = ["グラタン作るので一本欲しいところ。",
                     "単純に飲みたい。仕事のお供。",
                     "後少しでなくなる。今日の鍋に使用する。",
                     "賞味期限が切れたのでストック用に欲しい。",
                     "残り後ひとスプーンぐらい"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackground(name: "ref_back")
        todayLabel.text = formatToday()
        refTableView.register (UINib(nibName: "RefMemoTableViewCell", bundle: nil),forCellReuseIdentifier:"refMemoTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageDatas.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "refMemoTableViewCell", for: indexPath) as! RefMemoTableViewCell
        
        let imageName: String = imageDatas[indexPath.row]
        let titleName: String = titleDatas[indexPath.row]
        let memo: String = memoDatas[indexPath.row]
        
        cell.refMemoData(count: indexPath, image: imageName, title: titleName, memo: memo)
        return cell
    }
    
    @IBAction func tapListEditButton(_ sender: Any) {
        performSegue(withIdentifier: "ListEditSegue", sender: nil)
    }
}
