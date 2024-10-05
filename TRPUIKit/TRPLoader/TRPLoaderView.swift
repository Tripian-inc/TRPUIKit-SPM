//
//  TRPLoaderView.swift
//  TRPUIKit
//
//  Created by Evren Yaşar on 27.09.2018.
//  Copyright © 2018 Evren Yaşar. All rights reserved.
//

import Foundation

public class TRPLoaderView: UIView {
    var loaderView: Loader?
    let superView: UIView
    var isAdded = false
    
    public init(superView: UIView) {
        self.superView = superView
        super.init(frame: CGRect.zero)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func show() {
        if isAdded == true {return}
        
        let widht: CGFloat = 100
        let height: CGFloat = 40
        loaderView = Loader(frame: CGRect(x: (superView.frame.width - widht) / 2,
                                          y: (superView.frame.height - height) / 3,
                                          width: widht,
                                          height: height))
        superView.addSubview(loaderView!)
        isAdded = true
    }
    
    public func remove() {
        if isAdded == false {return}
        if loaderView != nil {
            loaderView!.removeFromSuperview()
        }
        isAdded = false
    }
}
