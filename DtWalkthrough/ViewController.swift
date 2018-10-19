//
//  ViewController.swift
//  DtWalkthrough
//
//  Created by Diogo Trajano on 18/10/18.
//  Copyright © 2018 Diogo Trajano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var colView: UICollectionView!
  @IBOutlet weak var pgControl: UIPageControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let nib = UINib(nibName: "DtWalkthroughCollectionViewCell", bundle: nil)
    colView.register(nib, forCellWithReuseIdentifier: "DtWalkthroughCollectionViewCell")
    colView.delegate = self
    colView.dataSource = self
    colView.reloadData()

    // Do any additional setup after loading the view, typically from a nib.
  }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DtWalkthroughCollectionViewCell", for: indexPath) as? DtWalkthroughCollectionViewCell else {
      return UICollectionViewCell()
    }
    
    //cell.backgroundColor = UIColor.red
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = collectionView.frame.size.width
    let height = collectionView.frame.size.height * 1.3
    return CGSize(width: width, height: height)
  }
}

