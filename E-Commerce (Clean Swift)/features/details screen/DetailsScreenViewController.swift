//
//  DetailsScreenViewController.swift
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

protocol DetailsScreenDisplayLogic : AnyObject {
    
  func display(viewModel: DetailsScreen.GetData.ViewModel)
}

class DetailsScreenViewController: UIViewController, DetailsScreenDisplayLogic
{
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productTitle: UILabel!
    
    @IBOutlet weak var productDescribe: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    
  var interactor: DetailsScreenBusinessLogic?
  var router: (NSObjectProtocol & DetailsScreenRoutingLogic & DetailsScreenDataPassing)?

  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    getData()
  }

  
  func getData()
  {
    let request = DetailsScreen.GetData.Request()
    interactor?.handle(request: request)
  }
  
  func display(viewModel: DetailsScreen.GetData.ViewModel)
  {
    productTitle.text = viewModel.title
    productDescribe.text = viewModel.describe
    productImage.image =  viewModel.image
    productPrice.text = "\(viewModel.price) TL"
  }
    
    func addFav() {
        let request = DetailsScreen.AddToFav.Request(productID: "", isFav: true)
        interactor?.handle(request: request)
    }
    
    func displayFav (viewModel : DetailsScreen.AddToFav.ViewModel){
        print(viewModel.resultMessage)
    }
    
    func addBasket() {
        let request = DetailsScreen.AddToBasket.Request(productID: "", itemCount: "")
        interactor?.handle(request: request)
    }
    
    func displayBasket (viewModel : DetailsScreen.AddToBasket.ViewModel){
        print(viewModel.resultMessage)
    }
}
