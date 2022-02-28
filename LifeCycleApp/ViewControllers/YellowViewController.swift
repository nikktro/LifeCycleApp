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
}
