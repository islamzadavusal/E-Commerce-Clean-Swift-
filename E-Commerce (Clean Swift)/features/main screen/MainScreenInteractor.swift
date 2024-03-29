//
//  MainScreenInteractor.swift
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

protocol ProductListBusinessLogic {
    func getList(request: ProductList.List.Request)
    func searchTitle(request: ProductList.List.Request)
}

protocol ProductListDataStore {
    var productListResponse: ProductResponse? { get set }
}

class MainScreenInteractor: ProductListBusinessLogic, ProductListDataStore {
    var productListResponse: ProductResponse? = nil
    var presenter: MainScreenPresentationLogic?
    var worker: MainScreenWorker?
    
    func getList(request: ProductList.List.Request) {
        worker = MainScreenWorker()
        worker?.getList(completion: { response, error in
            self.productListResponse = response
            
            let presentationResponse = ProductList.List.Response(productListResponse: response)
            self.presenter?.present(response: presentationResponse)
        })
    }
    
    func searchTitle(request: ProductList.List.Request) {
        
        if request.searchTitle.isEmpty {
            let presentationResponse = ProductList.List.Response(productListResponse: productListResponse)
            self.presenter?.present(response: presentationResponse)
            
            return
        }
        
        
        let products = (self.productListResponse?.products ?? [])
            .filter ({$0.title.contains(request.searchTitle)})
        
        let response = ProductResponse(products: products)
        
        let presentationResponse = ProductList.List.Response(productListResponse: response)
        self.presenter?.present(response: presentationResponse)
    }
    
}

