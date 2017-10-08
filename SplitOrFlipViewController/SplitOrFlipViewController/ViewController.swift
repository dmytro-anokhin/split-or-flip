//
//  ViewController.swift
//  SplitOrFlipViewController
//
//  Created by Dmytro Anokhin on 08/10/2017.
//  Copyright © 2017 Dmytro Anokhin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateFlipButton()
    }

    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        
        coordinator.animate(alongsideTransition: nil) { _ in
            self.updateFlipButton()
        }
    }

    func updateFlipButton() {
        if let splitOrFlipViewController = splitOrFlipViewController {
            switch splitOrFlipViewController.displayMode {
                case .sideBySide:
                    navigationItem.rightBarButtonItem = nil
                    break
                case .one:
                    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Flip", style: .plain, target: self, action: #selector(flipAction))
                    break
            }
        }
    }

    @objc func flipAction() {
        splitOrFlipViewController?.flipAction()
    }
}
