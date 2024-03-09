//
//  FavoriteRepository.swift
//  E-Commerce (Clean Swift)
//
//  Created by Vusal Islamzada on 09.03.24.
//

import UIKit

class FavoriteRepository {
    
    static var shared : FavoriteRepository = FavoriteRepository()
    
//    func favorite(productionID: Int, isFav: Bool) {
//        UserDefaults.standard.setValue(isFav, forKey: productionID)
//    }
//    
//    func isFavorited(productionID : Int) -> Bool {
//        UserDefaults.standard.bool(forKey: productionID)
//    }
    
    
    func favorite(productionID: Int, isFav: Bool) {
      UserDefaults.standard.setValue(isFav, forKey: String(productionID))
    }

    func isFavorited(productionID: Int) -> Bool {
      return UserDefaults.standard.bool(forKey: String(productionID))
    }


}
