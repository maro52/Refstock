//
//  RefMemoTableViewCell.swift
//  Refstock
//
//  Created by Mika Miyakawa on 2021/01/11.
//

import UIKit

class RefMemoTableViewCell: UITableViewCell {
    @IBOutlet weak var refImage: UIImageView!
    @IBOutlet weak var refTitle: UILabel!
    @IBOutlet weak var refMemo: UILabel!
    
    func refMemoData(count: IndexPath) {
        self.refImage.image = UIImage(named: "milk_bin")
        self.refTitle.text = String("Title")
        self.refMemo.text = String("Memo")
    }
}
