//
//  TopViewController.swift
//  Refstock
//
//  Created by Mika Miyakawa on 2021/01/11.
//

import UIKit

class TopViewController: UIViewController {

    @IBOutlet weak var todayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackground(name: "ref_back")
        todayLabel.text = formatToday()
    }
}

