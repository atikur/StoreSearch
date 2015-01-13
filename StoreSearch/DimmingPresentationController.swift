//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Atikur Rahman on 1/13/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {
    
    lazy var dimmingView = GradientView(frame: CGRect.zeroRect)
    
    override func presentationTransitionWillBegin() {
        dimmingView.frame = containerView.bounds
        
        containerView.insertSubview(dimmingView, atIndex: 0)
    }
    
    override func shouldRemovePresentersView() -> Bool {
        return false
    }
}
