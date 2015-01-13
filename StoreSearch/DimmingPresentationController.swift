//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Atikur Rahman on 1/13/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {
    override func shouldRemovePresentersView() -> Bool {
        return false
    }
}
