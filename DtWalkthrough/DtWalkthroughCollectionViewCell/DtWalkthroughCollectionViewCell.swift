//
//  DtWalkthroughCollectionViewCell.swift
//  DtWalkthrough
//
//  Created by Diogo Trajano on 19/10/18.
//  Copyright © 2018 Diogo Trajano. All rights reserved.
//

import UIKit

class DtWalkthroughCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var colSubView: UICollectionView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    //DtWalkthroughContentCollectionViewCell
    let nib = UINib(nibName: "DtWalkthroughContentCollectionViewCell", bundle: nil)
    colSubView.register(nib, forCellWithReuseIdentifier: "DtWalkthroughContentCollectionViewCell")
    colSubView.delegate = self
    colSubView.dataSource = self
    colSubView.reloadData()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
  }
  
}

extension DtWalkthroughCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 3
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DtWalkthroughContentCollectionViewCell", for: indexPath) as? DtWalkthroughContentCollectionViewCell else {
      return UICollectionViewCell()
    }
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = collectionView.frame.size.width
    let height = collectionView.frame.size.height
    return CGSize(width: width, height: height)
  }
}
