//
//  TipViewController.swift
//  TipCalc
//
//  Created by Alec Osborne on 5/7/18.
//  Copyright © 2018 UnInfamous Games. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createView()
    }
    
    
    func createView() {
        
        let tipOrTotalSegmentedItems = ["Check Tip $", "Check Total $"]
        let tipOrTotalSegmentedController = UISegmentedControl(items: tipOrTotalSegmentedItems)
        tipOrTotalSegmentedController.selectedSegmentIndex = 0
        
        tipOrTotalSegmentedController.translatesAutoresizingMaskIntoConstraints = false
        let controlTop = NSLayoutConstraint(item: tipOrTotalSegmentedController, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .topMargin, multiplier: 1, constant: 25)
        let controlCenter = NSLayoutConstraint(item: tipOrTotalSegmentedController, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let controlWidth = NSLayoutConstraint(item: tipOrTotalSegmentedController, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.8, constant: 0)
        let controlHeight = NSLayoutConstraint(item: tipOrTotalSegmentedController, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0, constant: 28)
        
        view.addSubview(tipOrTotalSegmentedController)
        view.addConstraints([controlTop, controlCenter, controlWidth, controlHeight])
        
//        let checkAmountStackView: UIStackView
//        view.addSubview(checkAmountStackView)
    }
}

