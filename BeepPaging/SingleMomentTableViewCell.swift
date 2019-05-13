//
//  SingleMomentTableViewCell.swift
//  BeepPaging
//
//  Created by 齐旭晨 on 2019/5/13.
//  Copyright © 2019 齐旭晨. All rights reserved.
//

import UIKit

@IBDesignable class SingleMomentTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    func reloadData() -> Void {
        label.text = "123"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        label.text = "123"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
