//
//  ViewController.swift
//  StoreSearch
//
//  Created by Atikur Rahman on 1/3/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // add 64 point margin at top of tableview
        // [20 pts for status bar & 44 pts for search bar]
        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
    }

}

