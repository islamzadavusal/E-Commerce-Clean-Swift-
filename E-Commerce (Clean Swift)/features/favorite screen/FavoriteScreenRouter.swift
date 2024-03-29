//
//  FavoriteScreenRouter.swift
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

@objc protocol FavoriteScreenRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol FavoriteScreenDataPassing
{
  var dataStore: FavoriteScreenDataStore? { get }
}

class FavoriteScreenRouter: NSObject, FavoriteScreenRoutingLogic, FavoriteScreenDataPassing
{
  weak var viewController: FavoriteScreenViewController?
  var dataStore: FavoriteScreenDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: FavoriteScreenViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: FavoriteScreenDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
