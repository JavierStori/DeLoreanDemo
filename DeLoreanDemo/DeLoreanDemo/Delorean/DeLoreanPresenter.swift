//
//  DeLoreanPresenter.swift
//  DeLoreanDemo
//
//  Created by Javier Cervantes on 09/04/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  You can apply clean architecture to your iOS and Mac projects,
//

import Foundation

class DeLoreanPresenter: DeLoreanPresenterProtocol {
    weak var view: DeLoreanViewProtocol?
    var router: DeLoreanRouterProtocol

    init(wireframe: DeLoreanRouterProtocol) {
        self.router = wireframe
    }
    
    func presenterDataFetched() { 
        //call view method to show data -> self.view.someMethodToShowData()
    }

    func presenterShowError() { 
        //call view method to show error -> self.view.someMethodToShowError()
    }
    
    func presenterRoutintgToView() { 
        //call router to change view -> self.router.someMethodToRoute()
    }
}
