//
//  BasketScreenPresenter.swift
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

protocol BasketScreenPresentationLogic
{
  func presentSomething(response: BasketScreen.Something.Response)
}

class BasketScreenPresenter: BasketScreenPresentationLogic
{
  weak var viewController: BasketScreenDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: BasketScreen.Something.Response)
  {
    let viewModel = BasketScreen.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
