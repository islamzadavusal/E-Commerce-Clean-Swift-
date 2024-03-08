//
//  ProductsTableViewCell.swift
//  E-Commerce (Clean Swift)
//
//  Created by Vusal Islamzada on 07.03.24.
//

import UIKit
import Kingfisher

class ProductsTableViewCell: UITableViewCell, ProductCellProtocol {
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productTitle: UILabel!
    
    @IBOutlet weak var productDescribe: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    @IBOutlet weak var productOldPrice: UILabel!
    
    @IBOutlet weak var productContainerView: UIView!
    
    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    
    @IBOutlet weak var imageWidth: NSLayoutConstraint!
    
    var viewModel : ProductUIData!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(productData: ProductUIData) {
        productContainerView.layer.cornerRadius = 16
        productContainerView.layer.borderColor = UIColor.lightGray.cgColor
        productContainerView.layer.borderWidth = 1
        
        productTitle.text = productData.title
        productDescribe.text = productData.description
        productPrice.text = "\(productData.price) TL"
        productOldPrice.text = "\(productData.price) TL"
        
        self.productImage.kf.setImage(with: URL(string: productData.thumbnailURL)) { image in
            print("Success image")
            
            self.productImage.layer.cornerRadius = 10
            
//            if let size = try? image.get().image.size {
//                let ratio = size.width / size.height
//                self.imageWidth.constant = self.imageHeight.constant * ratio
//            }
            
            //        self.productImage.loadImage(urlString: productData.thumbnailURL)
            
        }
    }
}

protocol ProductCellProtocol {
    func configure(productData : ProductUIData)
}

protocol CellViewModelProtocol {
    
}

extension UIImageView {
    func loadImage(urlString : String) {
        if let url = URL(string: urlString) {
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: url) {
                    let image = UIImage(data: imageData)
                    
                    DispatchQueue.main.async {
                        self.image = image
                    }
                    
                }
            }
        }
    }
}
