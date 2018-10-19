//
//  DtWalkthroughContentCollectionViewCell.swift
//  DtWalkthrough
//
//  Created by Diogo Trajano on 19/10/18.
//  Copyright © 2018 Diogo Trajano. All rights reserved.
//

import UIKit

class DtWalkthroughContentCollectionViewCell: UICollectionViewCell {
  
  var ct = 0
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  @IBAction func btnExpandIsPressed(_ sender: Any) {
    print("teste")
    if ct % 2 == 0 {
      self.frame.size.height = self.frame.size.height - 300
    } else {
      self.frame.size.height = self.frame.size.height + 300
    }
    ct+=1
  }
  
}
