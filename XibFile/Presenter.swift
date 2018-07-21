//
//  Presenter.swift
//  XibFile
//
//  Created by Tarasenko Jurik on 21.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import Foundation

protocol PresenterProtocol: class {
    // init(_ view: ViewControllerProtocol) // VC self view. // ???
    func setupView(_ view: CustomViewProtocol)
}

final class Presenter: PresenterProtocol {
    
   private var controller: ViewControllerProtocol
    
    required init(_ view: ViewControllerProtocol) {
        self.controller = view
    }
    
    func setupView(_ view: CustomViewProtocol) {
        
        view.myViewBackgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.controller.myFuncFromVC()
    }
    
    
}
