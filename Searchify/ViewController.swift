//
//  ViewController.swift
//  Searchify
//
//  Created by Lauren Granger on 8/10/16.
//  Copyright © 2016 Lauren Granger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var albumSearchBar: UISearchBar!
    @IBOutlet weak var albumTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumSearchBar.delegate = self
    }
    
    func searchBarSearchButtonClicked(albumSearchBar: UISearchBar) {
        //call the method that calls the api
        getAlbumData(albumSearchBar.text!)
        print("searchText \(albumSearchBar.text)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

