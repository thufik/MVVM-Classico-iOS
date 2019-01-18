//
//  Classic_MVVMTests.swift
//  Classic MVVMTests
//
//  Created by EquipeSuporteAplicacao on 8/2/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import XCTest

@testable import Classic_MVVM

class Classic_MVVMTests: XCTestCase {
    
    var viewModel : ViewModel!
    var somethingArrayDidchangeWasCalled : Bool = false
    
    override func setUp() {
        super.setUp()

        self.viewModel = ViewModel()
        
        viewModel.somethingArrayDidchange = { somethingArray in
            self.somethingArrayDidchangeWasCalled = true
        }
    }
    

    func testExample() {
        
        viewModel.fethSomething()
        
        XCTAssertTrue(somethingArrayDidchangeWasCalled)
    }

}
