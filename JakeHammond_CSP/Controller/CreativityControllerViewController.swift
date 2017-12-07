//
//  CreativityControllerViewController.swift
//  JakeHammond_CSP
//
//  Created by Hammond, Jacob on 11/8/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit

public class CreativityControllerViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sctionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "Doge"),
            UIImage(named: "Kitty"),
            UIImage(named: "Froggy"),
            UIImage(named: "Sheep"),
            UIImage(named: "Car"),
            UIImage(named: "House"),
            UIImage(named: "Candy"),
            UIImage(named: "Logan"),
            UIImage(named: "Fidget Spinner"),
            UIImage(named: "Mouse"),
            UIImage(named: "Phone"),
            UIImage(named: "Food"),
            UIImage(named: "Apple"),
            UIImage(named: "Sauce"),
            UIImage(named: "Pupper"),
        ]
    }()
    
    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
            collectionView?.performBatchUpdates(
                {
                    self.collectionView?.reloadItems(at: indexPaths)
                })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
            }
        }
    }
    
    
    
    
   override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
