//
//  ViewController.swift
//  MainApp
//
//  Created by Daniel Sutcliffe on 28/02/2021.
//

import UIKit

import Core         /// Add framework(s) to Scheme General Tab
import Storyboards
import Xibs

class ViewController: UIViewController {

    @IBOutlet weak var xibAButton: UIButton!
    @IBOutlet weak var xibBButton: UIButton!
    @IBOutlet weak var storyboardAButton: UIButton!
    @IBOutlet weak var storyboardBButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        xibAButton.setTitle("Xib A", for: .normal)
        xibBButton.setTitle("Xib B", for: .normal)
        storyboardAButton.setTitle("Storyboard A", for: .normal)
        storyboardBButton.setTitle("Storyboard B", for: .normal)
    }

    @IBAction func xibAButtonPressed(_ sender: UIButton) {
        print("Xib A Pressed")
        XibACoordinator(presenter: self).start()
    }
    
    @IBAction func xibBButtonPressed(_ sender: UIButton) {
        print("Xib B Pressed")
        XibBCoordinator(presenter: self).start()
    }
    
    @IBAction func storyboardAButtonPressed(_ sender: UIButton) {
        print("Storyboard A Pressed")
        guard let launcherViewController = UIStoryboard(name: "StoryboardA", bundle: Bundle(identifier: "com.jaydan.Storyboards")).instantiateInitialViewController()
            else {
                return
        }
        launcherViewController.modalPresentationStyle = .fullScreen
        present(launcherViewController, animated: true)
    }
    
    @IBAction func storyboardBButtonPressed(_ sender: UIButton) {
        print("Storyboard B Pressed")
        guard let launcherViewController = UIStoryboard(name: "StoryboardB", bundle: Bundle(identifier: "com.jaydan.Storyboards")).instantiateInitialViewController()
            else {
                return
        }
        launcherViewController.modalPresentationStyle = .fullScreen
        present(launcherViewController, animated: true)
    }
}

