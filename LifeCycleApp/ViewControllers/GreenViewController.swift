//
//  GreenViewController.swift
//  LifeCycleApp
//
//  Created by Nikolay Trofimov on 24.02.2022.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet var openThirdVC: UIButton! {
        didSet {
            print(openThirdVC.currentTitle ?? "")
            printMessage()
        }
    }
    
    var someProperty: String! {
        didSet {
            print(someProperty ?? "")
            printMessage()
        }
    }
    
    // Called before property initialisation
    override func awakeFromNib() {
        super.awakeFromNib()
        printMessage()
    }
    
    //
    override func loadView() {
        super.loadView()
        printMessage()
    }
    
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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    // Called when the view is resized
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("height - \(size.height), width - \(size.width)")
        printMessage()
    }
    
    // Called before hiding the view
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    // Called after the view is hidden
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }

    
}

extension UIViewController {
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
