//
//  MainScreenRouter.swift
//  E-Commerce (Clean Swift)
//
//  Created by Vusal Islamzada on 07.03.24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ProductRoutingLogic {
    func routeToDetail(productResponse : ProductResponse, selectedIndex : Int)
    func routeToProductOverview(product : Product)
}
class MainScreenRouter: NSObject, ProductRoutingLogic {

    weak var viewController : MainScreenViewController?
    
    func routeToDetail(productResponse: ProductResponse, selectedIndex: Int) {
        let detail = ViewControllerFactory.shared.makeProductDetail(productDetailResponse: productResponse, selectedIndex: selectedIndex)
        self.viewController?.navigationController?.pushViewController(detail, animated: true)
    }
    
    func routeToProductOverview(product : Product) {
        
    }
}
