//
//  ViewController.swift
//  CollectionViewLearning
//
//  Created by Mehul Shah on 27/09/16.
//  Copyright © 2016 Mehul Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var collectionView : UICollectionView!
    var tempArray = [String]()
    
    enum CollectionViewIdentifier : String{
        case rightHandIdentifier = "RightHandIdentifier"
        case leftHandIdentifier = "LeftHandIdentifier"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSampleArray()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
   /**
     Creates sample which can be used by the collectionView
    */
    func createSampleArray(){
        for number in 0...10{
            tempArray.append("Mehul\(number)")
            tempArray.append("Dev\(number)")
            tempArray.append("Puneet\(number)")
        }
    }
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tempArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let index = indexPath.row
        print(index)
        print(indexPath)
        if(index % 2 == 0){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewIdentifier.rightHandIdentifier.rawValue, for: indexPath)
            if let rightHandCell = (cell as? RightHandCell){
                rightHandCell.rightLabel.text = tempArray[index]
            }
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewIdentifier.leftHandIdentifier.rawValue, for: indexPath)
            if let leftHandCell = (cell as? LeftHandCell){
                leftHandCell.leftLabel.text = tempArray[index]
            }
            return cell
        }
    }
}



    
