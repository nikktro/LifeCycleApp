//
//  YellowViewController.swift
//  LifeCycleApp
//
//  Created by Nikolay Trofimov on 24.02.2022.
//

import UIKit

class YellowViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greenVC = segue.destination as? GreenViewController else { return }
        greenVC.someProperty = "someProperty"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        title = "Yellow VC"
        printMessage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printMessage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
    
}
