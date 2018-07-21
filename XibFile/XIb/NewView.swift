//
//  NewView.swift
//  XibFile
//
//  Created by Tarasenko Jurik on 21.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import UIKit

protocol CustomViewProtocol: class {
    var myViewBackgroundColor: UIColor { get set }
}
 final
class NewView: UIView, CustomViewProtocol {
    
    var myViewBackgroundColor: UIColor {
        get { return self.backgroundColor ?? .white }
        set { self.backgroundColor = newValue }
    }

    static func fromNib() -> NewView {
        return UINib(nibName: String(describing: self), bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! NewView
    }
}
