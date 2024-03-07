//
//  MainScreenModels.swift
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

enum ProductList {
    enum List {
        struct Request {
            let pageIndex: Int
            let pageItemCount: Int
        }
        struct Response {
            let productListResponse: ProductResponse?
        }
        struct ViewModel {
            let rows: [Rows]
        }
    }
    
    enum Rows {
        case empty
        case product(product: ProductUIData)
        
        func identifier() -> String {
            switch self {
            case .empty:
                return "empty_cell_identifier"
            case .product:
                return "ProductsTableViewCell"
            }
        }
    }
    
    enum ProductDelete {
        struct Request {
            let productID: Int
        }
        struct Response {
            let isSuccess: Bool
        }
        struct ViewModel {
            let isSuccess: Bool
        }
    }
}
