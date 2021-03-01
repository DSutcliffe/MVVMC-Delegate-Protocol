//
//  XibAViewController.swift
//  Xibs
//
//  Created by Daniel Sutcliffe on 01/03/2021.
//

import UIKit

class XibAViewController: UIViewController {
    let viewModel: XibAViewModel
    
    init(viewModel: XibAViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.green

    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        viewModel.dismiss()
    }
    
}
