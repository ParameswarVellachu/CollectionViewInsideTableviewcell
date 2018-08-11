//
//  MainTableViewCell.swift
//  CollectionViewInsideTV
//
//  Created by Veera Reddy on 8/11/18.
//  Copyright © 2018 Parameswar. All rights reserved.
//

import UIKit
class MainTableViewCell: UITableViewCell {
    @IBOutlet weak var InCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}

extension MainTableViewCell {
    func setcollectionViewDataSourceDelegate <D: UICollectionViewDelegate & UICollectionViewDataSource> (_ dataSourceDelegate: D, forRow:Int) {
        self.InCollectionView.delegate = dataSourceDelegate
        self.InCollectionView.dataSource = dataSourceDelegate
    }
}
