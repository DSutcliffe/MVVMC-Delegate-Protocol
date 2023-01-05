//
//  XibBViewController.swift
//  Xibs
//
//  Created by Daniel Sutcliffe on 01/03/2021.
//

import UIKit

protocol XibBViewControllerDelegate: AnyObject {
    func dismiss()
}

class XibBViewController: UIViewController {
    var delegate: XibBViewControllerDelegate?
    
    let viewModel: XibBViewModel
    
    init(viewModel: XibBViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.blue
        backButton.setTitle("Back", for: .normal)
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        delegate?.dismiss()
    }
    
}
