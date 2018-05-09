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
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup UI
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        createSegmentedController()
        createViewOne()
        createViewTwo()
        createViewThree()
    }
    
    
    // MARK: - Properties
    let tipOrTotalSegmentedController = UISegmentedControl(items: ["Check Tip $", "Check Total $"])
    
    let viewThree = UIView()
    
    let checkAmountLabel = UILabel()
    let checkAmountTextField = UITextField()
    
    let percentToTipLabel = UILabel()
    let percentToTipSegmentedController = UISegmentedControl(items: ["Custom %", "10%", "15%", "20%"])
    let percentToTipTextField = UITextField()
    let amountToTipLabel = UILabel()
    let amountToTipTextField = UITextField()
    
    let totalCheckAmountLabel = UILabel()
    let totalCheckAmountTextField = UITextField()
    
    
    // MARK: - Segmented Control
    func createSegmentedController() {
        
        tipOrTotalSegmentedController.selectedSegmentIndex = 0
        view.addSubview(tipOrTotalSegmentedController)
        
        tipOrTotalSegmentedController.translatesAutoresizingMaskIntoConstraints = false
        tipOrTotalSegmentedController.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        tipOrTotalSegmentedController.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tipOrTotalSegmentedController.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        tipOrTotalSegmentedController.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    
    // MARK: - ViewOne
    func createViewOne() {
        
        // MARK: Check $ Amount Label
        checkAmountLabel.font = UIFont(name: "Avenir Next", size: 17)
        checkAmountLabel.text = "Check $ Amount"
        
        view.addSubview(checkAmountLabel)
        view.addSubview(checkAmountTextField)
        
        checkAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        checkAmountLabel.topAnchor.constraint(equalTo: tipOrTotalSegmentedController.bottomAnchor, constant: 50).isActive = true
        checkAmountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checkAmountLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        checkAmountLabel.heightAnchor.constraint(equalToConstant: 22.0).isActive = true
        
        
        // MARK: Check $ Amount Text Field
        checkAmountTextField.font = UIFont(name: "Avenir Next", size: 50)
        checkAmountTextField.placeholder = "$100"
        checkAmountTextField.textAlignment = .center
        checkAmountTextField.keyboardType = .numberPad
        checkAmountTextField.backgroundColor = UIColor.lightGray
        
        checkAmountTextField.translatesAutoresizingMaskIntoConstraints = false
        checkAmountTextField.topAnchor.constraint(equalTo: checkAmountLabel.bottomAnchor).isActive = true
        checkAmountTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checkAmountTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        checkAmountTextField.heightAnchor.constraint(equalToConstant: 78).isActive = true
    }
    
    
    // MARK: - ViewTwo
    func createViewTwo() {
        
        // MARK: % to Tip Label
        percentToTipLabel.font = UIFont(name: "Avenir Next", size: 17)
        percentToTipLabel.text = "% to Tip"
        percentToTipLabel.textAlignment = .left
        
        view.addSubview(percentToTipLabel)
        view.addSubview(percentToTipSegmentedController)
        view.addSubview(percentToTipTextField)
        view.addSubview(amountToTipLabel)
        view.addSubview(amountToTipTextField)
        
        percentToTipLabel.translatesAutoresizingMaskIntoConstraints = false
        percentToTipLabel.topAnchor.constraint(equalTo: checkAmountTextField.bottomAnchor, constant: 50).isActive = true
        percentToTipLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        percentToTipLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        percentToTipLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        // MARK: % to Tip Segemented Controller
        percentToTipSegmentedController.selectedSegmentIndex = 0
        
        percentToTipSegmentedController.translatesAutoresizingMaskIntoConstraints = false
        percentToTipSegmentedController.topAnchor.constraint(equalTo: percentToTipLabel.bottomAnchor).isActive = true
        percentToTipSegmentedController.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        percentToTipSegmentedController.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        percentToTipSegmentedController.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        // MARK: % to Tip Text Field
        percentToTipTextField.font = UIFont(name: "Avenir Next", size: 50)
        percentToTipTextField.text = "10%"
        percentToTipTextField.textAlignment = .center
        percentToTipTextField.keyboardType = .numberPad
        percentToTipTextField.backgroundColor = UIColor.lightGray
        
        percentToTipTextField.translatesAutoresizingMaskIntoConstraints = false
        percentToTipTextField.topAnchor.constraint(equalTo: percentToTipSegmentedController.bottomAnchor).isActive = true
        percentToTipTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        percentToTipTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        percentToTipTextField.heightAnchor.constraint(equalToConstant: 78).isActive = true
        
        
        // MARK: $ to Tip Label
        amountToTipLabel.font = UIFont(name: "Avenir Next", size: 17)
        amountToTipLabel.text = "$ to Tip"
        amountToTipLabel.textAlignment = .left
        
        amountToTipLabel.translatesAutoresizingMaskIntoConstraints = false
        amountToTipLabel.topAnchor.constraint(equalTo: percentToTipTextField.bottomAnchor, constant: 10).isActive = true
        amountToTipLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        amountToTipLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        amountToTipLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        // MARK: $ to tip Text Field
        amountToTipTextField.font = UIFont(name: "Avenir Next", size: 50)
        amountToTipTextField.text = "$10"
        amountToTipTextField.textAlignment = .center
        amountToTipTextField.keyboardType = .numberPad
        amountToTipTextField.backgroundColor = UIColor.lightGray
        amountToTipTextField.allowsEditingTextAttributes = false
        
        amountToTipTextField.translatesAutoresizingMaskIntoConstraints = false
        amountToTipTextField.topAnchor.constraint(equalTo: amountToTipLabel.bottomAnchor).isActive = true
        amountToTipTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        amountToTipTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        amountToTipTextField.heightAnchor.constraint(equalToConstant: 78).isActive = true
    }
    
    
    // MARK: - ViewThree
    func createViewThree() {
        
        // MARK: View
        viewThree.addSubview(totalCheckAmountLabel)
        viewThree.addSubview(totalCheckAmountTextField)
        view.addSubview(viewThree)
        
        viewThree.translatesAutoresizingMaskIntoConstraints = false
        viewThree.topAnchor.constraint(equalTo: amountToTipTextField.bottomAnchor, constant: 50).isActive = true
        viewThree.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewThree.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        
        // MARK: Check $ Total Label
        totalCheckAmountLabel.font = UIFont(name: "Avenir Next", size: 17)
        totalCheckAmountLabel.text = "Check Total"
        totalCheckAmountLabel.textAlignment = .left
        
        totalCheckAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        totalCheckAmountLabel.topAnchor.constraint(equalTo: viewThree.topAnchor).isActive = true
        totalCheckAmountLabel.leadingAnchor.constraint(equalTo: viewThree.leadingAnchor).isActive = true
        totalCheckAmountLabel.widthAnchor.constraint(equalTo: viewThree.widthAnchor).isActive = true
        totalCheckAmountLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        // MARK: Check $ Total Text Field
        totalCheckAmountTextField.font = UIFont(name: "Avenir Next", size: 50)
        totalCheckAmountTextField.text = "$110"
        totalCheckAmountTextField.textAlignment = .center
        totalCheckAmountTextField.keyboardType = .numberPad
        totalCheckAmountTextField.backgroundColor = UIColor.lightGray
        
        totalCheckAmountTextField.translatesAutoresizingMaskIntoConstraints = false
        totalCheckAmountTextField.topAnchor.constraint(equalTo: totalCheckAmountLabel.bottomAnchor).isActive = true
        totalCheckAmountTextField.leadingAnchor.constraint(equalTo: viewThree.leadingAnchor).isActive = true
        totalCheckAmountTextField.widthAnchor.constraint(equalTo: viewThree.widthAnchor).isActive = true
        totalCheckAmountTextField.heightAnchor.constraint(equalToConstant: 78).isActive = true
    }
}
