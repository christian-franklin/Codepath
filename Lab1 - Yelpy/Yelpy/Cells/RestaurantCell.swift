//
//  RestaurantCell.swift
//  Yelpy
//
//  Created by Christian Franklin on 2/1/22.
//  Copyright © 2022 memo. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {
   
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var RestaurantImage: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
