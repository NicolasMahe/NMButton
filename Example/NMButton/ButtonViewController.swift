//
//  ButtonViewController.swift
//  NMButtonExample
//
//  Created by Nicolas Mahé on 05/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import NMButton

class ButtonViewController: UIViewController {

  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------
  
  @IBOutlet weak var buttonWithViewAndIntrinsicSize: NMButton!
  @IBOutlet weak var buttonWithView: NMButton!
  
  //----------------------------------------------------------------------------
  // MARK: - Life cycle
  //----------------------------------------------------------------------------
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //Add a custom controller to the button
    self.buttonWithView.add(viewController: ButtonWithViewViewController())
    
    //Add a custom controller to the button and set the size of the button to the size of the view of the controller
    self.buttonWithViewAndIntrinsicSize.add(viewControllerChildSized: ButtonWithViewAndIntrinsicSizeViewController())
  }
}
