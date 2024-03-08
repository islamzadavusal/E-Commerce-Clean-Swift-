//
//  ViewModelFactory.swift
//  E-Commerce (Clean Swift)
//
//  Created by Vusal Islamzada on 07.03.24.
//

import Foundation
import UIKit

class ViewControllerFactory {
    // Singleton örneği
    static var shared: ViewControllerFactory = ViewControllerFactory()
    
    // Ana sekme çubuğunu oluşturur ve döndürür
    func makeMainTabbarBar() -> UITabBarController {
        let viewController = MyTabBarViewController()
        viewController.createViewControllers()
        return viewController
    }
    
    // Ürün listesi ekranını oluşturur ve döndürür
    func makeProductListController() -> UIViewController {
        let productListController = MainScreenViewController(nibName: "MainScreenViewController", bundle: Bundle.main)
      
        // Ürün listesi için gerekli bileşenlerin oluşturulması
        let interactor = MainScreenInteractor()
        let presenter = MainScreenPresenter() // Doğru presenter burada
        let router = MainScreenRouter()
        
        productListController.interactor = interactor
        productListController.router = router
        
        interactor.presenter = presenter
        presenter.viewController = productListController
        
        router.viewController = productListController
        
        return productListController
    }
    
    // Sepet ekranını oluşturur ve döndürür
    func makeBasketController() -> UIViewController {
        let basketController = BasketScreenViewController(nibName: "BasketScreenViewController", bundle: Bundle.main)
        return basketController
    }
    
    // Favori ekranını oluşturur ve döndürür
    func makeFavoriteController() -> UIViewController {
        let favController = FavoriteScreenViewController(nibName: "FavoriteScreenViewController", bundle: Bundle.main)
        return favController
    }
    
    func makeProductDetail(productDetailResponse : ProductResponse, selectedIndex : Int) -> UIViewController {
        let details = DetailsScreenViewController(nibName: "DetailsScreenViewController", bundle: Bundle.main)
        return details
    }
}

