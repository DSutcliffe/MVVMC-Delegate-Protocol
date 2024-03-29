//
//  XibACoordinator.swift
//  Xibs
//
//  Created by Daniel Sutcliffe on 01/03/2021.
//

import UIKit
import Core

public class XibACoordinator: Coordinator {
    let presenter: UIViewController
    let viewController: XibAViewController
    let viewModel = XibAViewModel()
    
    public init(presenter: UIViewController) {
        self.presenter = presenter
        /// Back button was failing because I was using a new instance "viewModel: XibAViewModel()" rather than the original initialised instance
        viewController = XibAViewController(viewModel: viewModel)
    }
    
    public func start() {
        viewModel.delegate = self
        viewController.modalPresentationStyle = .fullScreen
        presenter.present(viewController, animated: true, completion: nil)
    }
    
}

extension XibACoordinator: XibAViewModelDelegate {
    public func dismiss() {
        viewController.dismiss(animated: true, completion: nil)
    }
    
}
