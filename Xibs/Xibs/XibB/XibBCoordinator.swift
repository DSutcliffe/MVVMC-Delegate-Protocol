//
//  XibBCoordinator.swift
//  Xibs
//
//  Created by Daniel Sutcliffe on 01/03/2021.
//

import UIKit
import Core

public class XibBCoordinator: Coordinator {
    let presenter: UIViewController
    let viewController: XibBViewController
    let viewModel = XibBViewModel()
    
    
    public init(presenter: UIViewController) {
        self.presenter = presenter
        viewController = XibBViewController(viewModel: viewModel)
    }
    
    public func start() {
        viewController.delegate = self
        viewController.modalPresentationStyle = .fullScreen
        presenter.present(viewController, animated: true, completion: nil)
    }
    
}

extension XibBCoordinator: XibBViewControllerDelegate {
    func dismiss() {
        viewController.dismiss(animated: true, completion: nil)
    }
    
}
