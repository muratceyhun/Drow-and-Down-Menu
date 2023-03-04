//
//  MyCell.swift
//  Drop and Down
//
//  Created by Murat Ceyhun Korpeoglu on 4.03.2023.
//

import UIKit
import DropDown

class MyCell: DropDownCell {
    
    @IBOutlet var myImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
