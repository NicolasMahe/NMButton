//
//  NMButton.swift
//  NMButton
//
//  Created by Nicolas Mahé on 30/06/15.
//  Copyright (c) 2015 Nicolas Mahé. All rights reserved.
//

import UIKit
import NMUIExtension

open class NMButton: UIButton {
  
  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------
  
  var viewController: UIViewController?
  
  //----------------------------------------------------------------------------
  // MARK: - Init controller
  //----------------------------------------------------------------------------
  
  /**
  Set a controller to the button
  */
  open func add(viewController: UIViewController) {
    self.setTitle(nil, for: UIControlState())
    viewController.view.isUserInteractionEnabled = false
    
    self.add(view: viewController.view)
    self.viewController = viewController
  }
  
  /**
   Set a controller in the button and resize the button to reach the size of the viewChildSized view.
   */
  open func add(viewControllerChildSized viewController: UIViewController) {
    self.setTitle(nil, for: UIControlState())
    viewController.view.isUserInteractionEnabled = false
    
    self.add(viewChildSized: viewController.view)
    self.viewController = viewController
  }
  
  //----------------------------------------------------------------------------
  // MARK: - Actions
  //----------------------------------------------------------------------------
  
  override open var isHighlighted: Bool {
    didSet {
      if let contr = self.viewController as? NMButtonController {
        contr.setHighlighted(self.isHighlighted)
      }
    }
  }
  
}
