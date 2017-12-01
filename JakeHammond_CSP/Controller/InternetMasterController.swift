//
//  InternetMasterController.swift
//  JakeHammond_CSP
//
//  Created by Hammond, Jacob on 11/29/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit

public class InternetMasterViewontroller : UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Deinitions"
            "CSP"
            "CTEC"
            "Canyons"
            "Twitter"
            "Swift Language Guide"
        ]
    }()
    
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO: Replace with your correct links
        adresses = [
            "https://www.google.com"
            "https://www.google.com"
            "https://www.google.com"
            "https://www.google.com"
            "https://www.google.com"
            "https://www.google.com"
        ]
        
        if let splitView = splitViewController
        {
            let curreControllrs = splitView.childViewControllers
            detailViewController = currentControllers[0] as?
                InternetDetailViewController
        }
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        //Uncomment the following line o preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
    }
    
    override public func numberOfSelection(in tableView: UITableView) -> Int InternetDetailViewController
    {
        // #warningIncomplete implementation, return the number of selections
        return 1
    }
    
    override public func tableViw( tableView: UITableView, numberOfRowsInSelection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public fun tableView( tableView: UITableView, cellForRowAt indexPath: IndePath) -> UITableViewCell
    {
    let cell = talbeView.dequeueReusableCel(withIdentifier: "reuseIdentifier", for: indexPath)
    let currentText = internetTopics[indexPath.row]
    cell.textLable!.text = currentText
    
    return cell
    }
    
    //MARK: Handle the internal transfer
    override public func prepare(for segue: UIStoryboardSegue, sender:
        Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = adress[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {
                    //TODO: Replace with your definitions - great time to use the " " " opperator
                    pageText = "All the definitions you wrote........."
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segu.destination as!
                    InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailView = pageText
                controller.navigationItem.leftBarBttonItem =
                    splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
}
