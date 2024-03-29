//
//  MainScreenPresenter.swift
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

protocol MainScreenPresentationLogic {
    func present(response: ProductList.List.Response)
}

class MainScreenPresenter: MainScreenPresentationLogic {
    
    weak var viewController: ProductDisplayLogic?

    func present(response: ProductList.List.Response) {
        var cells: [ProductList.Rows] = []

        let products = response.productListResponse?.products
        if products?.isEmpty == true {
            cells.append(ProductList.Rows.empty)
        } else {
            products?.forEach { product in
                let productData = ProductUIData(product: product)
                cells.append(ProductList.Rows.product(product: productData))
            }
        }

        let viewModel = ProductList.List.ViewModel(rows: cells)
        viewController?.displayList(viewModel: viewModel)
    }
}

