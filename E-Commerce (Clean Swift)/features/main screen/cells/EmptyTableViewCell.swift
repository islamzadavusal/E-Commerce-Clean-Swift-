//
//  EmptyTableViewCell.swift
//  E-Commerce (Clean Swift)
//
//  Created by Vusal Islamzada on 11.03.24.
//

import UIKit

class EmptyTableViewCell: UITableViewCell, ProductCellProtocol {
    
    func configure(productData: ProductUIData) {
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
