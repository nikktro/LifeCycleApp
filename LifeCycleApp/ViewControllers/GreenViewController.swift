//
//  GreenViewController.swift
//  LifeCycleApp
//
//  Created by Nikolay Trofimov on 24.02.2022.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet var openThirdVC: UIButton!
    
    var someProperties: String!
    
    // Called after the View is loaded into memory
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Green VC"
        printMessage()
    }
    
    // Called before the View appears

    
    // Called when placing constraints

    
    // Called before placing all elements on the screen

    
    // This is where Auto Layout comes in
    
    
    // Called after all items on the screen have been placed
    
    
    // Called after the view appears on the screen
    
    
    // Called when the view is resized
    
    
    // Called before hiding the view
    
    
    // Called after the view is hidden

    
}

extension GreenViewController {
    func printMessage(function: String = #function) {
        print("\(title ?? ""): \(function)")
    }
}
