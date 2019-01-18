//
//  ViewModel.swift
//  Classic MVVM
//
//  Created by EquipeSuporteAplicacao on 8/2/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class ViewModel: NSObject {
    var somethingArrayDidchange : (([Something]) -> ())?
    
    var somethingArray : [Something] = []{
        didSet{
            self.somethingArrayDidchange!(somethingArray)
        }
    }
    
    func fethSomething(){
        var somethingArray : [Something] = []
        
        for index in 0..<5{
            let something = Something(somethingTitle: "Something title \(index)", somethingSubtitle: "Something subtitle \(index)")
            somethingArray.append(something)
        }
        
        self.somethingArray = somethingArray
    }
    
}
