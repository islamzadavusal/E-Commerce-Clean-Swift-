//
//  FavoriteRepository.swift
//  E-Commerce (Clean Swift)
//
//  Created by Vusal Islamzada on 09.03.24.
//

import UIKit

class FavoriteRepository {
    
    func favorite(productionID: String, isFav: Bool) {
        UserDefaults.standard.setValue(isFav, forKey: productionID)
    }
    
    func isFavorited(productionID : String) -> Bool {
        UserDefaults.standard.bool(forKey: productionID)
    }

}
