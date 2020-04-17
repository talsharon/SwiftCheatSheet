//
//  ViewController.swift
//  mercury
//
//  Created by Tal Sharon on 10/05/2017.
//  Copyright © 2017 Tal Sharon. All rights reserved.
//

import UIKit

protocol BaseViewControllerProtocol
{
    static var id: String { get }
    func initViewController()
}

open class BaseViewController: UIViewController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        initViewController()
    }
    
    required public init(nibName: String? = nil) {
        var name: String
        if nibName == nil {
            name = type(of: self).id
        } else {
            name = nibName!
        }
        
        super.init(nibName: name, bundle: nil)
        print("created new \(type(of: self).id)")
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(nibName: type(of: self).id, bundle: nil)
    }
}

extension BaseViewController: BaseViewControllerProtocol {
    
    open func initViewController() {
        addKeyboardNotificationHandlers()
    }
}

extension BaseViewController {
    
    private func addKeyboardNotificationHandlers() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc open func keyboardWillShow(notification: Notification) {
    }
    
    @objc open func keyboardWillHide(notification: Notification) {
    }
}
