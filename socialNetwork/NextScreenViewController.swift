//
//  NextScreenViewController.swift
//  socialNetwork
//
//  Created by Helen Poe on 17.01.2022.
//

import UIKit

class NextScreenViewController: UIViewController {
    var textFromVC: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = textFromVC
    }
    
    @IBAction func onFirstScreen(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
