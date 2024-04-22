//
//  DeLoreanVIPER.swift
//  DeLoreanDemo
//
//  Created by Javier Cervantes on 09/04/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  You can apply clean architecture to your iOS and Mac projects,
//


import UIKit

protocol DeLoreanViewProtocol: AnyObject {
    func viewDisplayData()
    func viewShowError()
}

protocol DeLoreanInteractorProtocol {
    func getDeLoreanData()
    var data: DeLoreanModels.DeLoreanView? { get }
}

protocol DeLoreanPresenterProtocol {
    func presenterDataFetched()
    func presenterShowError()
    func presenterRoutintgToView()
}

protocol DeLoreanRouterProtocol {
    var viewController: UIViewController { get }
    func routeToView()
}
