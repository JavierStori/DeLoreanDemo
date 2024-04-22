//
//  DeLoreanRouter.swift
//  DeLoreanDemo
//
//  Created by Javier Cervantes on 09/04/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  You can apply clean architecture to your iOS and Mac projects,
//

import UIKit

class DeLoreanRouter: DeLoreanRouterProtocol {
    
    var viewController: UIViewController {
        let view = DeLoreanViewController()
        let interactor = DeLoreanInteractor()
        let presenter = DeLoreanPresenter(wireframe: self)

        presenter.view = view
        view.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    func routeToView() {
        //self.view.navigation.pushViewController...
    }
}

