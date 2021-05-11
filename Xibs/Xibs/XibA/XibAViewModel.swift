//
//  XibAViewModel.swift
//  Xibs
//
//  Created by Daniel Sutcliffe on 01/03/2021.
//

import AVFoundation

protocol XibAViewModelDelegate: AnyObject {
    func dismiss()
}

class XibAViewModel {
    var delegate: XibAViewModelDelegate?
    var title = "Xib A"
    
    func dismiss() {
        delegate?.dismiss()
    }
}
