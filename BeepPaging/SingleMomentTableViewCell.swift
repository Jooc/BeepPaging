//
//  SingleMomentTableViewCell.swift
//  BeepPaging
//
//  Created by 齐旭晨 on 2019/5/13.
//  Copyright © 2019 齐旭晨. All rights reserved.
//

import UIKit

@IBDesignable class SingleMomentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var images = JSON.init()
    
    func reloadData(with momentToShow: JSON) -> Void {
        avatarImageView.image = UIImage(contentsOfFile: Bundle.main.path(forResource: momentToShow["friendAvatar"].string, ofType: "jpg")!)
        
        nameLabel.text = momentToShow["friendName"].string
        
        contentLabel.text = momentToShow["content"].string
        
        images = momentToShow["imgs"]

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        self.imagesCollectionView.delegate = self
//        self.imagesCollectionView.dataSource = self
//        
//        imagesCollectionView.register(UINib.init(nibName: "SingleImageCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "SingleImageCell")
//        
//        imagesCollectionView.collectionViewLayout.invalidateLayout()
//        imagesCollectionView.reloadData()
//        
        print("awaked#############")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        print("Section##########")
//
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SingleImageCell", for: indexPath) as! SingleImageCollectionViewCell
//
//        cell.reloadData(with: images[indexPath.row])
//
//        return cell
//    }
//
    
    
}
