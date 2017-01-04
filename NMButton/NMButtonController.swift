//
//  NMButtonController.swift
//  NMButton
//
//  Created by Nicolas Mahé on 05/07/15.
//  Copyright (c) 2015 Nicolas Mahé. All rights reserved.
//

import UIKit

public protocol NMButtonController: class {
  
  func setHighlighted(_ highlighted: Bool)
  weak var button: NMButton? { get set }

}
