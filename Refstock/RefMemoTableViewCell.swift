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
    
    func refMemoData(count: IndexPath, image: String, title: String, memo: String) {
        self.refImage.image = UIImage(named: image)
        self.refTitle.text = title
        self.refMemo.text = memo
    }
}
