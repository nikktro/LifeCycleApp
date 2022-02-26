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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    // Called when placing constraints
    override func updateViewConstraints() {
        printMessage()
        super.updateViewConstraints()
    }
    
    // Called before placing all elements on the screen
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    // This is where Auto Layout comes in
    
    
    // Called after all items on the screen have been placed
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    
    // Called after the view appears on the screen
    
    
    // Called when the view is resized
    
    
    // Called before hiding the view
    
    
    // Called after the view is hidden

    
}

extension GreenViewController {
    func printMessage(function: String = #function) {
        print("\(title ?? ""): \(function) \(String.timestamp())")
    }
}

extension String {
    static func timestamp() -> String {
        let dateFMT = DateFormatter()
        dateFMT.locale = Locale(identifier: "en_US_POSIX")
        dateFMT.dateFormat = "yyyy-MM-dd' 'HH:mm:ss.SSSS"
        let now = Date()

        return String(format: "%@", dateFMT.string(from: now))
    }
}
