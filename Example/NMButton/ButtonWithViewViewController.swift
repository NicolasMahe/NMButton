//
//  ButtonWithViewViewController.swift
//  NMButtonExample
//
//  Created by Nicolas Mahé on 05/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import NMButton

class ButtonWithViewViewController: UIViewController, NMButtonController {
  
  //----------------------------------------------------------------------------
  // MARK: - Properties
  //----------------------------------------------------------------------------
  
  @IBOutlet weak var label: UILabel!
  
  //----------------------------------------------------------------------------
  // MARK: - Life cycle
  //----------------------------------------------------------------------------
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = UIColor.lightGray
  }
  
  func setHighlighted(_ highlighted: Bool) {
    self.view.backgroundColor = highlighted
      ? UIColor.gray
      : UIColor.lightGray
  }
  
}
