//
//  ViewController.swift
//  XibFile
//
//  Created by Tarasenko Jurik on 21.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol {
    func myFuncFromVC()
}

 final class ViewController: UIViewController, ViewControllerProtocol {
    
    @IBOutlet private weak var newViewCountainer: NewView!
    @IBOutlet private weak var newViewCont2: NewView!
    
    private var presenterDelegat: PresenterProtocol?
    
    // from Nib(.xib)
   private let myView = NewView.fromNib()
   private let myView2 = NewView.fromNib()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Counstraints
        newViewCountainer.addSubview(myView)
        newViewCont2.addSubview(myView2)
        myView.frame = newViewCountainer.bounds
        myView2.frame = newViewCont2.bounds
        
        presenterDelegat = Presenter(self) //ViewController: ViewControllerProtocol - it's view)
        presenterDelegat?.setupView(myView) //myView: CustomViewProtocol! - in NewView class!
        myView.myViewBackgroundColor = .white // First Priority
    }
    
    func myFuncFromVC() {
        print("myFuncFromVC")
    }
   
}

