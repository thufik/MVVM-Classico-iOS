//
//  ViewController.swift
//  Classic MVVM
//
//  Created by EquipeSuporteAplicacao on 8/2/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class SomethingViewController: UIViewController {

    lazy var somethingArray : [Something] = []
    
    @IBOutlet weak var viewController: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewController.delegate = self
        self.viewController.dataSource = self
        
        let viewModel = ViewModel()
        
        viewModel.somethingArrayDidchange = { somethingArray in
            self.setSomethingArray(array: somethingArray)
        }
        
        viewModel.fethSomething()
    }
    
    func setSomethingArray(array : [Something]){
        self.somethingArray = array
        self.viewController.reloadData()
    }
}

extension SomethingViewController : UITableViewDelegate{
    
}

extension SomethingViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.somethingArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.textLabel?.text = self.somethingArray[indexPath.row].somethingTitle
    }
}
